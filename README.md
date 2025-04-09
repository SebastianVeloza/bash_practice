# Scripts en Bash - Descripción

## 1. Identificación de tipo de archivo/directorio y ejecución de `ls`
Este script acepta una ruta como parámetro y determina si se trata de:
- Un fichero normal.
- Un directorio.
- Otro tipo de fichero.

Finalmente, ejecuta el comando `ls` sobre la ruta proporcionada en formato largo para mostrar detalles del contenido.

---

## 2. Acciones basadas en la extensión del archivo
Este script evalúa la extensión de un archivo recibido como parámetro:
- Si el archivo tiene extensión `.jpg`, se copia en la carpeta `~/fotos`.
- Si el archivo tiene otra extensión, informa al usuario y no realiza ninguna acción.

---

## 3. Información sobre el script y sus argumentos
Este script imprime en pantalla:
- El nombre del script que se está ejecutando.
- El número total de argumentos proporcionados.
- El primer y segundo argumentos juntos en una línea.
- Si hay más de dos argumentos, imprime cada uno a partir del tercero en líneas separadas.

---

## 4. Copia de archivos con validación de parámetros
Este script copia un archivo sobre otro y garantiza que solo se reciban dos parámetros:
- El primer parámetro es el archivo de origen.
- El segundo parámetro es el archivo de destino.
Si no se cumplen las condiciones, avisa al usuario y no realiza ninguna acción.

---

## 5. Renombrar archivos JPG con prefijo de fecha
Este script renombra todos los ficheros con extensión `.jpg` en el directorio actual, agregando un prefijo de fecha en formato **año-mes-día**.  
Por ejemplo, un archivo llamado `imagen1.jpg` se renombrará como `20240413-imagen1.jpg` si el script se ejecuta el 13 de abril de 2024.

---

¡Listo para usar y aprender! Si necesitas ejemplos de código, no dudes en pedirlos. 😊
