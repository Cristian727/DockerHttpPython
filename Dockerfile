# Usar una imagen base de Python
FROM python:3.9-slim

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo index.html al directorio de trabajo del contenedor
COPY . /app

# Exponer el puerto que usará el servidor HTTP
EXPOSE 8000

# Comando para iniciar el servidor HTTP
CMD ["python3", "-m", "http.server", "8000"]


#docker login (Si no estoy ya logeado)
#docker build -t example-container-python .
#docker tag example-container-python cristian727/example-container-python
#docker push cristian727/example-container-python
#docker run -p 8000:8000 cristian727/example-container-python