# STAGE 1: Builder
FROM python:3.9-slim AS builder
WORKDIR /app
COPY requirements.txt .
RUN pip install --user -r requirements.txt

# STAGE 2: Production (Final Menggunakan Alpine)
FROM python:3.9-alpine
WORKDIR /app

# Menentukan nilai default untuk variabel lingkungan
ENV APP_USER="Developer Mahasiswa"
ENV APP_ENV="production"

# Menyalin hasil install dari stage builder
COPY --from=builder /root/.local /root/.local
COPY . .

ENV PATH=/root/.local/bin:$PATH

CMD ["python", "project-mvc/app.py"]