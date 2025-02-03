#!/bin/bash

# Configuración de SonarQube
export SONAR_HOST_URL="https://sonarqube.awsbanbogota.com"
export SONAR_LOGIN="797dd4235097a4e698ca1414bdb45199cbcd88ff"
export SONAR_PROJECT_KEY="ycasall-personal-webApp"

# Imprimir las variables para verificación (opcional)
echo "SonarQube Host: $SONAR_HOST_URL"
echo "SonarQube Project Key: $SONAR_PROJECT_KEY"

# Configuración para Azure DevOps
echo "##vso[task.setvariable variable=SONAR_HOST_URL]$SONAR_HOST_URL"
echo "##vso[task.setvariable variable=SONAR_LOGIN]$SONAR_LOGIN"
echo "##vso[task.setvariable variable=SONAR_PROJECT_KEY]$SONAR_PROJECT_KEY"
