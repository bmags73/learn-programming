# Windows Setup Script for Python Learning

Write-Host "🚀 Setting up Python learning environment on Windows..." -ForegroundColor Green
Write-Host ""

# Check if Python is installed
Write-Host "Checking for Python..." -ForegroundColor Yellow
if (Get-Command python -ErrorAction SilentlyContinue) {
    Write-Host "✅ Python is already installed" -ForegroundColor Green
    python --version
} else {
    Write-Host "❌ Python not found" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please install Python from https://python.org/downloads" -ForegroundColor Yellow
    Write-Host "Make sure to check 'Add Python to PATH' during installation!" -ForegroundColor Yellow
    exit 1
}

Write-Host ""

# Check if Git is installed
Write-Host "Checking for Git..." -ForegroundColor Yellow
if (Get-Command git -ErrorAction SilentlyContinue) {
    Write-Host "✅ Git is already installed" -ForegroundColor Green
    git --version
} else {
    Write-Host "❌ Git not found" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please install Git from https://git-scm.com/downloads" -ForegroundColor Yellow
    exit 1
}

Write-Host ""

# Create virtual environment
Write-Host "📦 Creating Python virtual environment..." -ForegroundColor Yellow
if (Test-Path "venv") {
    Write-Host "⚠️  Virtual environment already exists, skipping..." -ForegroundColor Yellow
} else {
    python -m venv venv
    Write-Host "✅ Virtual environment created" -ForegroundColor Green
}

Write-Host ""

# Activate virtual environment
Write-Host "🔧 Activating virtual environment..." -ForegroundColor Yellow
& .\venv\Scripts\Activate.ps1

Write-Host ""

# Upgrade pip
Write-Host "📥 Upgrading pip..." -ForegroundColor Yellow
python -m pip install --upgrade pip

Write-Host ""

# Install common packages
Write-Host "📥 Installing common Python packages..." -ForegroundColor Yellow
Write-Host "   - ipython (interactive Python shell)" -ForegroundColor Cyan
Write-Host "   - pandas (data manipulation)" -ForegroundColor Cyan
Write-Host "   - numpy (numerical computing)" -ForegroundColor Cyan
Write-Host "   - matplotlib (data visualization)" -ForegroundColor Cyan

pip install ipython pandas numpy matplotlib

Write-Host ""

# Success message
Write-Host "✅ Setup complete!" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Activate the virtual environment:" -ForegroundColor White
Write-Host "   .\venv\Scripts\Activate.ps1" -ForegroundColor Cyan
Write-Host ""
Write-Host "2. Start learning Python:" -ForegroundColor White
Write-Host "   cd python\100-days-bootcamp\beginner" -ForegroundColor Cyan
Write-Host ""
Write-Host "3. Check your progress:" -ForegroundColor White
Write-Host "   cat progress-trackers\python-tracker.md" -ForegroundColor Cyan
Write-Host ""
Write-Host "Happy coding! 🎉" -ForegroundColor Green
