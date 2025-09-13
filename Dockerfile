# Dockerfile para N8N en Render
FROM n8nio/n8n:latest

# Variables de entorno
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=10000
ENV N8N_PROTOCOL=https
ENV NODE_ENV=production
ENV WEBHOOK_URL=https://alma-digitales-chatbot.onrender.com/webhook
ENV N8N_EDITOR_BASE_URL=https://alma-digitales-chatbot.onrender.com

# Crear directorio de trabajo
USER root
RUN mkdir -p /home/node/.n8n
RUN chown -R node:node /home/node/.n8n

# Volver al usuario node
USER node

# Exponer puerto
EXPOSE 10000

# Comando de inicio
CMD ["n8n", "start"]
