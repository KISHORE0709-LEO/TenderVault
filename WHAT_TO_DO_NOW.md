## ✅ DONE - Your Project is Ready!

### Test Locally (Optional):
```bash
# Terminal 1 - Start Backend
cd backend
python main.py

# Terminal 2 - Start Frontend  
cd frontend
npm run dev
```

Visit: http://localhost:5173

---

### Deploy to Render (Main Goal):

**1. Push to GitHub:**
```bash
git add .
git commit -m "Add env config"
git push
```

**2. Deploy on Render:**
- Go to: https://dashboard.render.com
- Click "New +" → "Web Service"
- Connect repo: `chv-sneha/TenderVault`
- Root Directory: `backend`
- Build: `pip install -r requirements.txt`
- Start: `uvicorn main:app --host 0.0.0.0 --port $PORT`

**3. Add Environment Variables in Render:**
```
DEPLOYER_MNEMONIC=unhappy horn like frog wait pigeon album improve fatal loop festival expose green alpha syrup width patch voice unfair swim suit arrow spend absent gaze
GEMINI_API_KEY=AIzaSyAOyg_UlYUT1yx_yUvO1PbfyFBtmwn79Ss
ALGORAND_APP_ID=755804596
FIREBASE_PROJECT_ID=tendervault-90515
```

**4. Click "Create Web Service"**

**5. Update Frontend:**
After Render gives you URL, edit `frontend/.env`:
```
VITE_API_URL=https://your-render-url.onrender.com
```

Then push frontend to Vercel.

---

### That's It! 🎉
Your backend will be live on Render in 2-3 minutes.
