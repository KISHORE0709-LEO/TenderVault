# 🚀 Deploy Backend to Render

## Quick Deploy Steps:

1. **Push to GitHub:**
```bash
git add .
git commit -m "Update env config"
git push
```

2. **Go to Render Dashboard:**
   - https://dashboard.render.com
   - Click "New +" → "Web Service"
   - Connect your GitHub repo: `chv-sneha/TenderVault`
   - Select `backend` folder as root directory

3. **Configure Service:**
   - Name: `tendervault-api`
   - Environment: `Python 3`
   - Build Command: `pip install -r requirements.txt`
   - Start Command: `uvicorn main:app --host 0.0.0.0 --port $PORT`

4. **Add Environment Variables:**
   Go to Environment tab and add:
   ```
   DEPLOYER_MNEMONIC=unhappy horn like frog wait pigeon album improve fatal loop festival expose green alpha syrup width patch voice unfair swim suit arrow spend absent gaze
   GEMINI_API_KEY=AIzaSyAOyg_UlYUT1yx_yUvO1PbfyFBtmwn79Ss
   ALGORAND_APP_ID=755804596
   FIREBASE_PROJECT_ID=tendervault-90515
   ```

5. **Deploy:**
   - Click "Create Web Service"
   - Wait 2-3 minutes for deployment
   - Copy your Render URL (e.g., `https://tendervault-api.onrender.com`)

6. **Update Frontend:**
   Edit `frontend/.env`:
   ```
   VITE_API_URL=https://your-render-url.onrender.com
   ```

7. **Test:**
   ```bash
   curl https://your-render-url.onrender.com/api/health
   ```

## Note:
- Free Render instances sleep after 15 min inactivity
- First request after sleep takes ~50 seconds
- Firebase admin key not needed on Render (backend works without it)
