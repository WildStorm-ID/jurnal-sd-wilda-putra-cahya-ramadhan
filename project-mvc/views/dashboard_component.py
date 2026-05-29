def fetch_data_from_api(api_function):
    print("[System] Mencoba menghubungkan ke API...")
    try:
        response = api_function()
        if response["status"] == "success":
            return response["data"]
        else:
            raise Exception(response.get("message", "API Return Error"))    
    except Exception as e:
        print(f" [Error] Gagal Integrasi: {e}")
        return None

def render_dashboard(data):
    print("\n=== DASHBOARD UTAMA ===")
    print("Berhasil memuat data dari integrasi lokal:")
    for user in data:
        print(f"- {user['name']} (ID: {user['id']})")
    print("=======================\n")