#!/bin/bash

# Muestra como usar el script
mostrar_uso() {
  echo "Uso: $0 <ruta_a_fichero_o_directorio>"
}


# Valida si la ruta existe
verificar_existencia() {
  local ruta=$1
  if [ ! -e "$ruta" ]; then
    echo "La ruta '$ruta' no existe."
    exit 1
  fi
}

# Comprobar la extensión del archivo
comprobar_extension() {
  local archivo=$1
  local extension="${archivo##*.}" # Extrae la extensión del archivo
  echo "$extension"
}

# Mnejar archivos JPG
manejar_jpg() {
  local archivo=$1
  local destino="$HOME/fotos"

  # Crea la carpeta ~/fotos si no existe
  if [ ! -d "$destino" ]; then
    mkdir -p "$destino"
    echo "Carpeta '$destino' creada."
  fi

  # Copia el archivo al destino
  cp "$archivo" "$destino"
  echo "Archivo '$archivo' copiado a '$destino'."
}



main() {
  if [ $# -eq 0 ]; then
    mostrar_uso
    exit 1
  fi

  local archivo=$1

  verificar_existencia "$archivo"
  local extension=$(comprobar_extension "$archivo")

  # Actúa según la extensión del archivo
  if [ "$extension" = "jpg" ] || [ "$extension" = "JPG" ]; then
    manejar_jpg "$archivo"
  else
    echo "El archivo '$archivo' no es un JPG. No se realizará ninguna acción."
  fi
}

main "$@"