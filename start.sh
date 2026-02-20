#!/bin/bash

echo "🚀 Starting TenderVault..."

# Check if .env files exist
if [ ! -f backend/.env ]; then
    echo "❌ backend/.env not found!"
    echo "📝 Edit backend/.env and add your API keys"
    exit 1
fi

if [ ! -f frontend/.env ]; then
    echo "❌ frontend/.env not found!"
    echo "📝 Edit frontend/.env and add your Firebase config"
    exit 1
fi

# Start backend
echo "🔧 Starting backend on http://localhost:8000..."
cd backend
python main.py &
BACKEND_PID=$!
cd ..

# Wait for backend to start
sleep 3

# Start frontend
echo "🎨 Starting frontend on http://localhost:5173..."
cd frontend
npm run dev &
FRONTEND_PID=$!
cd ..

echo ""
echo "✅ TenderVault is running!"
echo "📱 Frontend: http://localhost:5173"
echo "🔌 Backend: http://localhost:8000"
echo "📚 API Docs: http://localhost:8000/docs"
echo ""
echo "Press Ctrl+C to stop both servers"

# Wait for Ctrl+C
trap "kill $BACKEND_PID $FRONTEND_PID; exit" INT
wait
