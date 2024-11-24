# Usa la imagen oficial de PostgreSQL
FROM postgres:latest

# Establece las variables de entorno necesarias para PostgreSQL
ENV POSTGRES_USER=myuser
ENV POSTGRES_PASSWORD=mypassword
ENV POSTGRES_DB=mydatabase

# Expone el puerto 5432 para que puedas conectarte a la base de datos desde fuera del contenedor
EXPOSE 5432

# Copia un script SQL para inicializar la base de datos (opcional)
# COPY init.sql /docker-entrypoint-initdb.d/

# Comando por defecto para iniciar PostgreSQL
CMD ["postgres"]