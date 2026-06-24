FROM python:3.9-slim 
WORKDIR /app 

# Menentukan nilai default untuk variabel lingkungan 
ENV APP_USER="Developer Mahasiswa" 
ENV APP_ENV="development"

COPY ./project-mvc .

COPY . . 
CMD ["python", "app.py"]