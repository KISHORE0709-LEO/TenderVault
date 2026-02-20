# 🚀 TenderVault Quick Start Guide

## Step 1: Backend Setup (5 minutes)

```bash
cd backend

# Create .env file
cat > .env << 'EOF'
DEPLOYER_MNEMONIC=your_25_word_algorand_mnemonic_here
GEMINI_API_KEY=your_gemini_api_key_here
ALGORAND_APP_ID=755804596
EOF

# Install dependencies
pip install -r requirements.txt

# Run backend
python main.py
```

Backend will run on: http://localhost:8000

## Step 2: Frontend Setup (3 minutes)

```bash
cd frontend

# Create .env file
cat > .env << 'EOF'
VITE_FIREBASE_API_KEY=your_firebase_api_key
VITE_FIREBASE_AUTH_DOMAIN=your_project.firebaseapp.com
VITE_FIREBASE_PROJECT_ID=your_project_id
VITE_FIREBASE_STORAGE_BUCKET=your_project.appspot.com
VITE_FIREBASE_MESSAGING_SENDER_ID=your_sender_id
VITE_FIREBASE_APP_ID=your_app_id
EOF

# Install dependencies
npm install

# Run frontend
npm run dev
```

Frontend will run on: http://localhost:5173

## Step 3: Get Your API Keys

### Algorand Testnet Account
1. Go to https://testnet.algoexplorer.io/dispenser
2. Create account and get testnet ALGO
3. Save your 25-word mnemonic

### Gemini API Key
1. Go to https://aistudio.google.com/apikey
2. Create API key
3. Copy key

### Firebase Config
1. Go to https://console.firebase.google.com
2. Create project
3. Go to Project Settings > General
4. Copy config values

## Step 4: Test It Works

```bash
# Test backend
curl http://localhost:8000/api/health

# Open frontend
open http://localhost:5173
```

## Common Issues

**Backend won't start?**
- Check Python version: `python --version` (need 3.11+)
- Install dependencies: `pip install -r requirements.txt`

**Frontend won't start?**
- Check Node version: `node --version` (need 18+)
- Delete node_modules: `rm -rf node_modules && npm install`

**Firebase errors?**
- Backend works without Firebase (uses in-memory storage)
- Frontend needs Firebase for auth

**Algorand errors?**
- Backend will skip Algorand if mnemonic invalid
- App still works, just no blockchain verification
