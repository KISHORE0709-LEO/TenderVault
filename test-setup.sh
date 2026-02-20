#!/bin/bash

echo "🧪 Testing TenderVault Setup..."
echo ""

# Test 1: Check Python
echo "1️⃣ Checking Python..."
if command -v python3 &> /dev/null; then
    PYTHON_VERSION=$(python3 --version)
    echo "   ✅ $PYTHON_VERSION"
else
    echo "   ❌ Python not found"
fi

# Test 2: Check Node
echo "2️⃣ Checking Node.js..."
if command -v node &> /dev/null; then
    NODE_VERSION=$(node --version)
    echo "   ✅ Node $NODE_VERSION"
else
    echo "   ❌ Node.js not found"
fi

# Test 3: Check backend .env
echo "3️⃣ Checking backend/.env..."
if [ -f backend/.env ]; then
    if grep -q "your_" backend/.env; then
        echo "   ⚠️  Found but needs configuration"
    else
        echo "   ✅ Configured"
    fi
else
    echo "   ❌ Not found"
fi

# Test 4: Check frontend .env
echo "4️⃣ Checking frontend/.env..."
if [ -f frontend/.env ]; then
    if grep -q "your_" frontend/.env; then
        echo "   ⚠️  Found but needs configuration"
    else
        echo "   ✅ Configured"
    fi
else
    echo "   ❌ Not found"
fi

# Test 5: Check backend dependencies
echo "5️⃣ Checking backend dependencies..."
cd backend
if python3 -c "import fastapi, firebase_admin, algosdk" 2>/dev/null; then
    echo "   ✅ All installed"
else
    echo "   ❌ Missing dependencies - run: pip install -r requirements.txt"
fi
cd ..

# Test 6: Check frontend dependencies
echo "6️⃣ Checking frontend dependencies..."
if [ -d frontend/node_modules ]; then
    echo "   ✅ Installed"
else
    echo "   ❌ Missing - run: cd frontend && npm install"
fi

echo ""
echo "📋 Next Steps:"
echo "   1. Edit backend/.env with your API keys"
echo "   2. Edit frontend/.env with your Firebase config"
echo "   3. Run: ./start.sh"
