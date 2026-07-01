#!/bin/bash

# 1. Menarik image versi terbaru dari GitHub Packages
docker pull ghcr.io/wildstorm-id/jurnal-sd-wilda-putra-cahya-ramadhan:v2-prod

# 2. Menghentikan dan menghapus kontainer lama jika sedang berjalan
docker stop app-v1 || true
docker rm app-v1 || true

# 3. Menjalankan kontainer baru secara otomatis
docker run -d --name app-v1 -p 8080:5000 ghcr.io/wildstorm-id/jurnal-sd-wilda-putra-cahya-ramadhan:v2-prod