# Database Schema

## 1. Tabel Users
- id (INT, PK)
- username (VARCHAR)
- email (VARCHAR, UNIQUE)
- password (VARCHAR)
- created_at (TIMESTAMP)

## 2. Tabel Motor
- id (INT, PK)
- nama_motor (VARCHAR)
- merk (VARCHAR)
- harga (INT)
- tahun (INT)
- deskripsi (TEXT)

## 3. Tabel Transaksi
- id (INT, PK)
- user_id (FK → users.id)
- motor_id (FK → motor.id)
- tanggal (DATE)
- status (VARCHAR)

## 4. Tabel Favorit
- id (INT, PK)
- user_id (FK)
- motor_id (FK)