#!/bin/sh

# Script de inicio para Alma Digitales N8N Chatbot
# Este script maneja la inicialización de N8N en Render

echo "🎮 Iniciando Alma Digitales Chatbot..."
echo "🚀 N8N Version: $(n8n --version)"

# Verificar variables de entorno críticas
if [ -z "$N8N_ENCRYPTION_KEY" ]; then
    echo "⚠️ Generando clave de encriptación automática..."
    export N8N_ENCRYPTION_KEY="alma_digitales_$(date +%s)_$(openssl rand -hex 16)"
fi

# Configurar directorio de datos
mkdir -p /home/node/.n8n
echo "📁 Directorio N8N: /home/node/.n8n"

# Configurar URL del webhook
if [ ! -z "$RENDER_EXTERNAL_URL" ]; then
    export WEBHOOK_URL="${RENDER_EXTERNAL_URL}/webhook"
    export N8N_EDITOR_BASE_URL="$RENDER_EXTERNAL_URL"
    echo "🔗 Webhook URL: $WEBHOOK_URL"
fi

# Verificar que N8N esté disponible
if ! command -v n8n &> /dev/null; then
    echo "❌ Error: N8N no está instalado"
    exit 1
fi

echo "✅ Configuración completa"
echo "🎮 Iniciando N8N para Alma Digitales..."

# Iniciar N8N
exec n8n start
