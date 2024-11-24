# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Set environment variables for PostgreSQL connection
ENV POSTGRES_DB=<your_database_name>
ENV POSTGRES_USER=<your_database_user>
ENV POSTGRES_PASSWORD=<your_database_password>
ENV POSTGRES_HOST=<your_database_host>
ENV POSTGRES_PORT=<your_database_port>

# Expose the port the app runs on
EXPOSE 8000

# Command to run the application
CMD ["python", "app.py"]