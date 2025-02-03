# pipeline-templates
 repositorio para las shared libraries
 
El paso de abrir el navegador (xdg-open, open, etc.) es útil para entornos locales o interactivos, pero en un pipeline de CI/CD automatizado, este paso no tendrá efecto porque los agentes de Azure DevOps no tienen interfaces gráficas. Si el plan es ejecutar este paso solo localmente, se manejo de esta manera:

# Abrir el navegador con la URL del servicio (solo en entornos locales)
<< 
- script: |
    if [ "$(Agent.OS)" == "Windows_NT" ]; then
      start "$SERVICE_URL"
    elif [ "$(Agent.OS)" == "Darwin" ]; then
      open "$SERVICE_URL"
    else
      echo "Skipping browser opening on CI/CD agent."
    fi
  displayName: 'Open Service URL in Browser (Local Only)'
>>
