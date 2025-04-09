#!/bin/bash

obtener_fecha_actual() {
  date +"%Y%m%d"
}

renombrar_archivo() {
  local archivo="$1"
  local fecha="$2"
  local nuevo_nombre="${fecha}-${archivo}"
  mv "$archivo" "$nuevo_nombre"
  echo "Renombrado: $archivo -> $nuevo_nombre"
}

procesar_archivos_jpg() {
  local fecha="$1"
  local encontrado=false

  for archivo in *.JPG *.jpg; do
    # Verificar si el archivo existe (por si no hay coincidencias)
    if [ -f "$archivo" ]; then
      encontrado=true
      renombrar_archivo "$archivo" "$fecha"
    fi
  done

  if [ "$encontrado" = false ]; then
    echo "No se encontraron archivos con extensión .JPG o .jpg en el directorio actual."
  fi
}

main() {
  local fecha
  fecha=$(obtener_fecha_actual)
  echo "Fecha actual: $fecha"
  procesar_archivos_jpg "$fecha"
}

main
