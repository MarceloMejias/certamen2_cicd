# Dockerfile para aplicación web estática con Nginx
FROM nginx:alpine

# Metadatos
LABEL maintainer="marcelomejias"
LABEL description="Sistema gestor de pokemones"

# Copiar archivos del proyecto al directorio de Nginx
COPY index.html /usr/share/nginx/html/
COPY js/ /usr/share/nginx/html/js/
COPY img/ /usr/share/nginx/html/img/
COPY vendor/ /usr/share/nginx/html/vendor/

# Exponer puerto 80
EXPOSE 80

# Comando para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]
