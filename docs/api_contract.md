# API Contract - User Profile

**Endpoint:** /api/v1/profile
**Method:** GET
**Response Body (JSON):**
{
    "id": 1,
    "username": "Wilda Putra Cahya Ramadhan",
    "email": "wildaputracahyaramadhan@univ.ac.id",
    "avatar_url": "https://image.com/avatar.png"
}

---

# API Contract - User Login

**Endpoint: /api/v1/login**
**Method:** POST
**Request Body:**
{
  "email": "user@mail.com",
  "password": "123456"
}

**Response Body (Success):**
{
  "status": "success",
  "message": "Login berhasil",
  "token": "jwt_token_here"
}

**Response Body (Failed):**
{
  "status": "error",
  "message": "Email atau password salah"
}