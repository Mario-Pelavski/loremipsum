#!/bin/bash

# Obtener la lista de archivos de texto en el directorio actual
files=$(find . -maxdepth 1 -type f -name "*.txt")

# Recorrer cada archivo y contar las líneas
for file in $files
do
    lines=$(wc -l < "$file")
    echo "El archivo $file tiene $lines líneas."
done
