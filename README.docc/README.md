# DNIeFW Framework

## 📖 Table of Contents

- [Resumen](#resumen)
- [Pila Tecnológica](#pila-tecnologica)
- [API Pública – DNIeFW](#api-publica-dniefw)
- [Cómo Funciona](#como-funciona)
- [Integración en Aplicaciones Host](#integración-en-aplicaciones-host)
- [Configuración de Info.plist (Requerida para NFC)](#configuracion-d-infoplist-requerida-para-nfc)
- [Localización del Framework](#localizacion-del-framework)
- [Proyectos de Ejemplo](#proyectos-de-ejemplo)
- [Cómo Construir el Framework](#como-construir-el-framework)
- [Output](#output)
- [Licencia](#licencia)

## 📌 Resumen

**DNIeFW** es un framework nativo de **Objective-C** que permite a cualquier aplicación iOS interactuar con el **documento nacional de identidad electrónico (DNIe)** de España usando **NFC**. Proporciona una interfaz simplificada para leer el DNIe, autenticarse vía CAN/PIN y realizar operaciones criptográficas como firmas digitales.


---

## ⚙️ Pila Tecnológica
 - ✅ Escrito completamente en **Objective-C**.
 - ✅ Utiliza **CoreNFC** para interactuar con tarjetas inteligentes compatibles con ISO7816.
- ✅ Incorpora lógica de la biblioteca **JMulticard basada en Java**, traducida a Objective-C usando **J2ObjC**.   
  - Esto permite que rutinas Java robustas y seguras (por ejemplo, análisis de certificados, validación de PIN, firma criptográfica) se reutilicen directamente en aplicaciones nativas de iOS.   
  - Los objetos Java internos están encapsulados; tu aplicación nunca interactúa directamente con las clases de J2ObjC.

---


## 🔓 API Pública – DNIeFW

Las siguientes clases públicas están disponibles para usar desde el framework `DNIeFW`:

```objc
#import <DNIeFW/DNIeFWError.h>       // Define tipos de error relacionados con la recuperación del DNIe
#import <DNIeFW/DNIeFWSigningError.h>     // Define tipos de error relacionados con la operación de firma del DNIe
#import <DNIeFW/DNIeSecureSession.h>   // Sesión para firmar datos
#import <DNIeFW/DNIeBasicService.h>   // Gestiona el proceso de inicio de sesión único con DNIe
#import <DNIeFW/DNIeSecureService.h> // Gestiona el proceso de inicio de sesión único con DNIe
#import <DNIeFW/DNIeInfo.h>            // DTO del DNIe
#import <DNIeFW/DNIeLogger.h>         // Utilidad de registro para depuración y diagnóstico
#import <DNIeFW/IOSNFCSessionManager.h>   // Sesión NFC nativa que gestiona el APDU y la conexión
```

## 🧠 Cómo Funciona

El framework **DNIeFW** proporciona una API nativa de alto nivel que abstrae toda la lógica de bajo nivel de NFC, operaciones criptográficas e interacciones internas de JMulticard. El flujo central gira en torno a dos clases de servicio principales:

- `DNIeBasicService` – Se utiliza para la **recuperación básica de datos** usando solo el CAN (Número de Acceso a la Tarjeta).
- `DNIeSecureService` – Se utiliza para **operaciones seguras** como autenticación y firma digital, que requieren tanto CAN como PIN.

Aquí tienes un desglose del flujo interno:

1. La aplicación host crea una instancia de `DNIeBasicService` (para información) o DNIeSecureService (para firma o datos seguros).

2. El framework inicializa un `NFCTagReaderSession` para escanear un DNIe español válido (documento de identidad electrónico).

3. Cuando se detecta una tarjeta, el framework establece un canal de comunicación APDU seguro con el chip.

4. Internamente, el framework aprovecha la lógica Java traducida (de **JMulticard**) a través de `EsGobJmulticardIosDnieWrapper` para ejecutar operaciones como:
   - ✅ **Recuperación de `DNIeInfo`**
   - 🔐 **Autenticación PIN usando desafío-respuesta**
   - ✍️ **Firma digital usando la clave privada dentro del DNIe**

5. Dependiendo de la operación:
   - **Flujo de lectura (vía `DNIeBasicService`)**  
     → Devuelve un objeto `DNIeInfo` poblado que contiene datos del usuario (número de DNI, nombre, caducidad, etc.), y opcionalmente imágenes de cara/firma.
   - **Flujo de firma (vía `DNIeSecureService` y `DNIeSecureSessionProtocol`)**  
     → Requiere entrada: datos del archivo (`NSData`) + algoritmo seleccionado (por ejemplo, SHA256withRSA)  
     → Devuelve salida: una firma **PKCS#1** (`NSData`), lista para base64.  
     → No se devuelve información personal del DNIe en este caso.

6. Cualquier error se encapsula en las clases unificadas `DNIeFWError` / `DNIeFWSigningError`, que proporcionan:
   - Un `code` numérico
   - Una `description` técnica
   - Una `localizationKey` para mensajes de usuario traducidos
   - Un campo `pinRetriesLeft` opcional (en caso de errores de firma)

Esta arquitectura asegura:

- ✅ **Fuerte encapsulación** entre las aplicaciones host y las internas criptográficas/NFC
- ✅ **Compatibilidad Swift y Objective-C**
- ✅ **Manejo de errores y alertas localizados**
- ✅ **Seguridad de la memoria** e hilos limpios

---

## ⚠️ Manejo Robusto de Errores con `DNIeFWError`

Cualquier error durante las operaciones de NFC, firma o análisis se devuelve a través de un objeto `DNIeFWError` consistente y estructurado.

La clase `DNIeFWError` proporciona una forma estandarizada, localizada y amigable para el desarrollador de representar y manejar todos los errores dentro del framework DNIe. Está diseñada tanto para mensajes orientados al usuario como para contextos de desarrollo/depuración, lo que la hace ideal para aplicaciones de producción con fuertes necesidades de fiabilidad y soporte.

---

### 🧱 Que es `DNIeFWError`?

Cada `DNIeFWError representa un único estado de error e incluye:

| Property             | Description                                                                 |
|----------------------|-----------------------------------------------------------------------------|
| `code`               | Código de error numérico único para seguimiento y diagnóstico               |
| `errorDescription`   | Explicación técnica, útil para registros                                    |
| `localizationKey`    | Clave para mensajes localizados de LocalizableError.strings`                |
| `type`               | Categoría de error (ej. hardware, internal_software, request, third_party)  |

---

### 📦 De dónde provienen los errores?

Los errores se crean y se devuelven de manera consistente en todo el framework. Las siguientes utilidades internas convierten automáticamente códigos brutos y errores del sistema en objetos `DNIeFWError`:


| Helper Class              | Purpose                                                                    |
|---------------------------|----------------------------------------------------------------------------|
| `HandleNFCError`          | Convierte `NSError` de Core NFC en un DNIeFWError`                         |
| `HandleThirdPartyError`   | Mapea errores de servidor, hardware de DNIe en instancias de `DNIeFWError` |

Cada utilidad encapsula la lógica de mapeo para que no tengas que manejar códigos brutos manualmente.

---

### 🧪 Ejemplo (Objective-C)

```objc
DNIeFWError *error = [DNIeFWError nfcReaderErrorRadioDisabled];

NSLog(@"Code: %ld", (long)error.code);
NSLog(@"Key: %@", error.localizationKey);
NSLog(@"Description: %@", error.errorDescription);
```

---

### 🛠 Patrones Factory 

Para crear los errores dentro del FW se Utilizan los métodos de fábrica DNIeFWError incorporados:

```objc
[DNIeFWError hardwareErrorWithCode:... description:... key:...]
[DNIeFWError requestErrorWithCode:... description:... key:...]
[DNIeFWError functionalErrorWithCode:... description:... key:...]
```

O utilidades de alto nivel como:

```objc
[HandleNFCError getNFCErrorWithNSError:nfcError];
[HandleThirdPartyError getDNIEErrorWithCode:serverCode];
```

---

### 🎛️ Debug & Retry Logic

Puedes usar las propiedades de DNIeFWError para clasificar y reaccionar a los errores:

```objc
if ([error.type isEqualToString:@"functional"]) {
    // No crítico, quizás el usuario canceló — no se necesita alerta
}

if ([error.code == 102007]) {
    // Manejar radio NFC deshabilitada — sugerir habilitar NFC
}
```

---

### ✅ Resumen

- Usa `DNIeFWError` para todos los errores en toda la aplicación
- Usa `localizationKey` + `LocalizableError.strings` para mensajes de depuración completamente traducidos
- Nunca muestres `errorDescription` directamente a los usuarios

---

ste sistema proporciona una forma escalable y mantenible de manejar errores de usuario, del sistema y del servidor en un formato consistente, rastreable y localizable.

## 📲 Integración en Aplicaciones de terceros

Puedes incluir DNIeFW.framework en cualquier aplicación iOS, sin importar si está escrita en Swift u Objective-C.

### Requisitos
- iOS 13 o posterior
- Capacidad NFC habilitada en la aplicación
- DNIeFW.framework añadido a tu proyecto

### ✅ Pasos

1. **Habilitar NFC:**
   - Ve a la pestaña Signing & Capabilities de tu aplicación    
   - Añade la capacidad **Near Field Communication Tag Reading**    
   - Añade esto a tu entitlements plist para poder consultar el protocolo PACE
   
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<string>PACE</string>
</plist>

2. **Vincular Framework:**
   - Arrastra `DNIeFW.framework` a **Linked Frameworks and Libraries**

3. **Usar el Framework**

4. **Activar / Desactivar logs**
    Si quieres activar o desactivar los registros del framework, puedes llamar: DNIeLogger.setEnabled(true) (en SWIFT) o [DNIeLogger setEnabled:YES]; (en OBCJ)

---

## 🧾 Configuración de Info.plist (Requerida para NFC)

Para habilitar la lectura de tarjetas DNIe vía NFC, debes modificar el archivo `Info.plist` de tu aplicación e incluir los **AIDs (Application Identifiers)** soportados y el mensaje de permiso NFC:

```xml
<key>com.apple.developer.nfc.readersession.iso7816.select-identifiers</key>
<array>
	<string>A0000002471001</string>
	<string>A000000003101001</string>
	<string>A000000003101002</string>
	<string>A0000000041010</string>
	<string>A0000000042010</string>
	<string>A0000000044010</string>
	<string>44464D46412E44466172653234313031</string>
	<string>D2760000850100</string>
	<string>D2760000850101</string>
	<string>00000000000000</string>
	<string>4D61737465722E46696C65</string>
</array>
<key>NFCReaderUsageDescription</key>
<string>This app needs NFC access to read your DNIe.</string>
```

Estos valores aseguran que iOS pueda reconocer e interactuar con los AIDs de tarjetas inteligentes correctos utilizados por el DNIe español y otros elementos seguros compatibles.

Puedes colocar esto dentro de la sección `<dict>` de tu `Info.plist`.

## 🧾 Localización del Framework
Cada aplicación host debe incluir un archivo Localizable.strings, con la traducción de los textos.
Estos textos se muestran en la vista de hoja nativa de NFC. Hay un ejemplo de los Localizables en el proyecto.
Por defecto, deben estar en todos los dialectos españoles e inglés (Vasco, Catalán, Gallego, Español y Valenciano)
Puedes añadir cualquier idioma que desees.

/* Error cuando se detecta una etiqueta NFC no compatible */
"nfc_unsupported_tag_error" = "Etiqueta NFC no compatible. Utilice un DNIe compatible.";

/* Error cuando no se detecta ninguna etiqueta NFC */
"nfc_no_tag_error" = "No se ha detectado ninguna etiqueta NFC. Inténtelo de nuevo.";

/* Error mostrado cuando se detecta más de una etiqueta NFC */
"nfc_multiple_tags_error" = "Se han detectado varias etiquetas NFC. Por favor, escanee solo una.";

/* Advertencia inicial antes de iniciar la lectura NFC */
"nfc_dni_warning" = "Mantenga su DNIe contra la parte posterior del teléfono.";

/* Mensaje mostrado cuando la sesión NFC del DNIe está activa */
"nfc_dni_active_conexion_warning" = "DNIe conectado. Por favor, no retire la tarjeta.";

/* Mensaje de error mostrado cuando falla la conexión NFC */
"nfc_connection_error" = "Fallo al conectar con la etiqueta NFC.";


---

## 📁 Proyectos de ejemplo

Puedes encontrar un respositorio con una aplicación de ejemplo construida en SwiftUI y Swift en este mismo proyecto de GitHub 

- A complete example built in **SwiftUI & Swift**

Este ejemplo demuestra cómo inicializar el framework, manejar la entrada del usuario para CAN y PIN, y recibir el resultado usando el patrón de delegado DNIeResult.

## 🏗️ Cómo Construir el Framework

El framework integra lógica Java usando [**J2ObjC**](https://github.com/google/j2objc), na herramienta de Google que convierte código fuente Java a Objective-C.

### 🔧 Prerrequisitos

- Xcode 14 o superior
- J2ObjC instalado en tu máquina
- Variables de entorno `JAVA_HOME` y `J2OBJC_HOME` correctamente configuradas

### ⚙️ Build

1. **Instalar J2ObjC:**
   - Descargar la última versión desde [la página J2ObjC GitHub](https://github.com/google/j2objc).
   - Descomprimir en directorio. Por ejemplo `/Users/yourname/dev/j2objc`.

2. **Configurar Xcode:**
   - I a **Build Settings → User-Defined**
   - Asegurarse que la variabe `J2OBJC_HOME` apunta al path correcto
	 ```
	 J2OBJC_HOME = /Users/yourname/dev/j2objc
	 ```

3. **Actualizar Header Search Paths:**
   - **Header Search Paths** debe incluir:
	 ```
	 $(J2OBJC_HOME)/include
	 ```
   - **Framework Search Paths** debe incluir:
	 ```
	 $(J2OBJC_HOME)/lib
	 ```

4. **Set Other Linker Flags:**
   - En **Linking > Other Linker Flags**, añadir:
	 ```
	-l jre_emul -l jre_zip -l z -l iconv -l jre_net -l jre_security -l jre_ssl -l jre_xml -l protobuf -ObjC
	 ```

5. **Compilar:**
   - Construir el framework normalmente con Xcode.

---

## 📤 Salida

Una vez compilado, obtendrás `DNIeFW.framework` que puede incluirse en cualquier aplicación iOS.

---

## 🛠️ Solución de Problemas

- ❗ *¿La aplicación se bloquea al leer NFC?*
  → Comprueba si el dispositivo es compatible con NFC y si `NFCReaderUsageDescription` está configurado correctamente.

- ❗ *¿No aparecen los registros?*
  → Llama `[DNIeLogger setEnabled:YES];` al principio del lanzamiento de tu aplicación.

- ❗ *¿El CAN parece inválido?*
  → Asegúrate de que sean 6 dígitos numéricos; algunas tarjetas pueden tener un formato diferente.

## 🔐 Consideraciones de Seguridad
- Todos los PINs y datos de la tarjeta se manejan solo en memoria y nunca se registran ni persisten.
- Las sesiones NFC se inician en modo seguro y se invalidan automáticamente al salir de la aplicación.
- Utiliza APIs nativas del sistema (CoreNFC, CommonCrypto) para operaciones criptográficas

### 📚 View Documentation Locally
Existe una versión de la documentación del Framework en la carpeta Resources.

1. Ejecuta `xcodebuild docbuild` o usa `⌘⇧Documentation` en Xcode
2. Luego previsualiza la documentación:

```bash
xcrun docc preview path/to/MyFramework.doccarchive
```
## 📚 Licencia

- Este framework integra componentes del proyecto JMulticard y sigue sus términos de licencia. Por favor, revisa la  [Licencia JMulticard](https://github.com/ctt-gob-es/jmulticard) antes de distribuirlo.

- Código Java traducido usando [**J2ObjC**](https://github.com/google/j2objc), que está licenciado bajo la [**Apache License 2.0**](https://www.apache.org/licenses/LICENSE-2.0).

---
