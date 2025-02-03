#!/bin/bash

# Parámetro: Nombre del servicio de Minikube
SERVICE_NAME=$1

# Paso 1: Obtener la URL del servicio expuesto
SERVICE_URL=$(minikube service "$SERVICE_NAME" --url)
echo "Service URL: $SERVICE_URL"
echo "##vso[task.setvariable variable=SERVICE_URL]$SERVICE_URL"

# Paso 2: Probar la conectividad con curl
curl -I "$SERVICE_URL"
curl "$SERVICE_URL"

# Paso 3: Abrir el navegador con la URL del servicio
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    xdg-open "$SERVICE_URL"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    open "$SERVICE_URL"
elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    start "$SERVICE_URL"
fi
