# Dockerfile para N8N en Render - Node.js 20
FROM node:20-alpine

# Instalar dependencias del sistema necesarias
RUN apk add --no-cache \
    python3 \
    make \
    g++ \
    git \
    bash \
    curl \
    wget

# Crear usuario node si no existe
RUN addgroup -g 1000 -S node || true
RUN adduser -u 1000 -S node -G node || true

# Instalar N8N última versión
RUN npm install -g n8n@latest

# Crear directorio de trabajo
WORKDIR /home/node/.n8n

# Configurar permisos
RUN chown -R node:node /home/node

# Cambiar a usuario node
USER node

# Variables de entorno para N8N
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=10000
ENV N8N_PROTOCOL=https
ENV NODE_ENV=production
ENV N8N_BASIC_AUTH_ACTIVE=false
ENV DB_TYPE=sqlite
ENV N8N_DISABLE_UI=false
ENV N8N_METRICS=false

# Exponer puerto
EXPOSE 10000

# Verificar que N8N esté instalado correctamente
RUN n8n --version

# Comando de inicio directo
CMD ["n8n", "start"]
