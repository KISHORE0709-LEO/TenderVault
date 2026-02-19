import os
from dotenv import load_dotenv
import google.generativeai as genai

load_dotenv()

gemini_key = os.getenv("GEMINI_API_KEY")
genai.configure(api_key=gemini_key)

print("Testing available models...")

# List all available models
for m in genai.list_models():
    if 'generateContent' in m.supported_generation_methods:
        print(f"✅ {m.name}")

print("\nTrying gemini-pro...")
try:
    model = genai.GenerativeModel('gemini-pro')
    response = model.generate_content("Say hello")
    print(f"✅ gemini-pro works: {response.text[:50]}")
except Exception as e:
    print(f"❌ gemini-pro failed: {e}")

print("\nTrying gemini-1.5-flash...")
try:
    model = genai.GenerativeModel('gemini-1.5-flash')
    response = model.generate_content("Say hello")
    print(f"✅ gemini-1.5-flash works: {response.text[:50]}")
except Exception as e:
    print(f"❌ gemini-1.5-flash failed: {e}")
