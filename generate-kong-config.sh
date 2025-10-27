#!/bin/bash
set -e

# Cargar variables del archivo .env
export $(grep -v '^#' .env | xargs)

# Sustituir variables en la plantilla
envsubst < kong-template.yml > kong.yml

echo "Archivo kong.yml generado exitosamente."
