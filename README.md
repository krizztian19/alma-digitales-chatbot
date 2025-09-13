# 🎮 Alma Digitales - Chatbot N8N

Chatbot personalizado para la tienda de videojuegos Alma Digitales, desarrollado con N8N y desplegado en Render.

## 🚀 Deploy Automático en Render

### Configuración Rápida:

1. **Fork este repositorio**
2. **Ve a [Render.com](https://render.com)**
3. **Conecta tu repositorio**
4. **Deploy automático** ✨

### Variables de Entorno Requeridas:

```env
GOOGLE_API_KEY=tu_clave_de_gemini_aqui
N8N_ENCRYPTION_KEY=clave_encriptacion_segura
WEBHOOK_URL=https://tu-app.onrender.com/webhook
```

## 🔧 Configuración Local

```bash
# Clonar repositorio
git clone https://github.com/tu-usuario/alma-digitales-chatbot.git
cd alma-digitales-chatbot

# Instalar N8N localmente
npm install -g n8n

# Ejecutar en desarrollo
npm run dev
```

## 📊 Características del Chatbot

- ✅ **Respuestas 24/7** sobre videojuegos
- ✅ **Recomendaciones personalizadas** 
- ✅ **Consultas de precios** y disponibilidad
- ✅ **Soporte técnico** básico
- ✅ **Integración con Gemini AI**

## 🎯 Flujos Principales

1. **Webhook Principal** → Recibe mensajes del widget
2. **Procesador de Consultas** → Clasifica tipo de pregunta
3. **Respuestas Automatizadas** → Para FAQ comunes
4. **Gemini Integration** → Para consultas complejas

## 📱 Widget Frontend

El widget se integra fácilmente en WordPress:

```html
<!-- Agregar antes del </body> -->
<script src="https://tu-app.onrender.com/widget.js"></script>
```

## 🔄 Keep-Alive

Configurado con UptimeRobot para mantener el servicio activo 24/7.

---

**Desarrollado para Alma Digitales** 🎮
