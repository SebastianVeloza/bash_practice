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

# Determinar el tipo de archivo
determinar_tipo() {
  local ruta=$1
  if [ -f "$ruta" ]; then
    echo "'$ruta' es un fichero normal."
  elif [ -d "$ruta" ]; then
    echo "'$ruta' es un directorio."
  else
    echo "'$ruta' es otro tipo de fichero."
  fi
}

# Listar contenido en formato largo
listar_contenido() {
  local ruta=$1
  echo "Contenido de '$ruta':"
  ls -l "$ruta"
}


main() {
  if [ $# -eq 0 ]; then
    mostrar_uso
    exit 1
  fi

  local ruta=$1

  verificar_existencia "$ruta"
  determinar_tipo "$ruta"
  listar_contenido "$ruta"
}

main "$@"