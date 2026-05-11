#!/usr/bin/env bash
set -euo pipefail

echo "🔧 Setting up Agentic AI Mastery development environment..."

# Check Python version
REQUIRED_MAJOR=3
REQUIRED_MINOR=11
PYTHON_VERSION=$(python3 -c "import sys; print(f'{sys.version_info.major}.{sys.version_info.minor}')")
PYTHON_MAJOR=$(echo $PYTHON_VERSION | cut -d. -f1)
PYTHON_MINOR=$(echo $PYTHON_VERSION | cut -d. -f2)

if [ "$PYTHON_MAJOR" -lt "$REQUIRED_MAJOR" ] || \
   ([ "$PYTHON_MAJOR" -eq "$REQUIRED_MAJOR" ] && [ "$PYTHON_MINOR" -lt "$REQUIRED_MINOR" ]); then
  echo "❌ Python $REQUIRED_MAJOR.$REQUIRED_MINOR+ is required. Found: $PYTHON_VERSION"
  exit 1
fi

echo "✅ Python $PYTHON_VERSION"

# Create virtual environment
if [ ! -d ".venv" ]; then
  echo "📦 Creating virtual environment..."
  python3 -m venv .venv
fi

# Activate
source .venv/bin/activate

# Upgrade pip
pip install --upgrade pip --quiet

# Install dependencies
echo "📚 Installing dependencies..."
pip install -r requirements.txt --quiet

# Install pre-commit hooks
echo "🪝 Installing pre-commit hooks..."
pre-commit install

# Copy .env.example if .env doesn't exist
if [ ! -f ".env" ]; then
  cp .env.example .env
  echo "📄 .env file created from .env.example — add your API keys"
fi

echo ""
echo "✅ Setup complete!"
echo ""
echo "Next steps:"
echo "  1. Activate your venv:  source .venv/bin/activate"
echo "  2. Add API keys to:     .env"
echo "  3. Launch Jupyter:      make jupyter"
