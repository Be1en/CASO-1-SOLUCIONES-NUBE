# Utiliza la imagen oficial de Node.js como base
FROM node:20

# Establece el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copia los archivos de la aplicación al contenedor
COPY package*.json ./
COPY app.js ./
COPY formulario.html ./

# Instala las dependencias
RUN npm install

# Expone el puerto en el que la aplicación se ejecutará dentro del contenedor
EXPOSE 3000

# Comando para ejecutar la aplicación cuando el contenedor se inicia
CMD ["node", "app.js"]