import os
from dotenv import load_dotenv

# Load file .env
load_dotenv()

DB_PASSWORD = os.getenv("DB_PASSWORD")

print("Database password loaded successfully")