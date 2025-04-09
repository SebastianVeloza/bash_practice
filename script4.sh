#!/bin/bash

# Muestra como usar el script
mostrar_uso() {
  echo "Uso: $0 <origen> <destino>"
  exit 1
}

# Verificar el número de parámetros
verificar_parametros() {
  if [ $# -ne 2 ]; then
    echo "Error: Se requieren exactamente dos parámetros."
    mostrar_uso
  fi
}

# Verificar si el archivo origen existe
verificar_origen() {
  local origen=$1
  if [ ! -f "$origen" ]; then
    echo "Error: El archivo de origen '$origen' no existe o no es un archivo regular."
    exit 1
  fi
}

# Copiar el archivo origen al destino
copiar_archivo() {
  local origen=$1
  local destino=$2
  cp "$origen" "$destino"
  if [ $? -eq 0 ]; then
    echo "El archivo '$origen' se copió exitosamente a '$destino'."
  else
    echo "Error: No se pudo copiar el archivo."
    exit 1
  fi
}



main() {
  verificar_parametros "$@"
  local origen=$1
  local destino=$2
  verificar_origen "$origen"
  copiar_archivo "$origen" "$destino"
}

main "$@"