#!/bin/bash

imprimir_nombre_script() {
  echo "Nombre del script: $0"
}

imprimir_numero_argumentos() {
  echo "Número de argumentos: $#"
}

imprimir_primer_segundo_argumento() {
  if [ $# -ge 2 ]; then
    echo "Primer y segundo argumento: $1 $2"
  else
    echo "No se han pasado suficientes argumentos para imprimir el primero y el segundo."
  fi
}

imprimir_argumentos_extra() {
  if [ $# -gt 2 ]; then
    echo "Argumentos adicionales:"
    shift 2 # Elimina el primer y segundo argumento de la lista
    for arg in "$@"; do
      echo "$arg"
    done
  else
    echo "No hay argumentos adicionales."
  fi
}

main() {
  imprimir_nombre_script
  imprimir_numero_argumentos "$@"
  imprimir_primer_segundo_argumento "$@"
  imprimir_argumentos_extra "$@"
}

main "$@"