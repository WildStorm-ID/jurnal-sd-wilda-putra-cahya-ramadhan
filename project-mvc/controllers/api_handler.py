import random

# Simulasikan data dari database
users = [{"id": 1, "name": "Admin"}, {"id": 2, "name": "User"}]

def get_users():
    simulasi_angka = random.randint(1, 10)
    if simulasi_angka % 2 != 0:
        return {
            "status": "error",
            "message": "Server sedang sibuk (503 Service Unavailable). Silakan coba lagi!"
        }
    
    return {"status": "success", "data": users}