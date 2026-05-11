.PHONY: help setup jupyter lint format test nb-check nb-clean clean

PYTHON := python3
VENV   := .venv
PIP    := $(VENV)/bin/pip
PYTEST := $(VENV)/bin/pytest

help:  ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

setup:  ## Create venv and install all dependencies
	$(PYTHON) -m venv $(VENV)
	$(PIP) install --upgrade pip
	$(PIP) install -r requirements.txt
	$(VENV)/bin/pre-commit install
	@echo "✅  Setup complete. Activate with: source $(VENV)/bin/activate"

jupyter:  ## Launch Jupyter Lab
	$(VENV)/bin/jupyter lab

lint:  ## Lint all Python files with ruff
	$(VENV)/bin/ruff check .

format:  ## Auto-format all Python files with ruff
	$(VENV)/bin/ruff format .

test:  ## Run all tests
	$(PYTEST) tests/ -v --cov=. --cov-report=term-missing

nb-check:  ## Validate notebooks execute cleanly
	$(VENV)/bin/pytest --nbval-lax modules/ -v

nb-clean:  ## Strip all notebook outputs
	find . -name "*.ipynb" -exec $(VENV)/bin/nbstripout {} \;
	@echo "✅  Notebook outputs cleared"

clean:  ## Remove build artefacts, cache, and venv
	find . -type d -name __pycache__ -exec rm -rf {} +
	find . -type d -name .ipynb_checkpoints -exec rm -rf {} +
	find . -type d -name .ruff_cache -exec rm -rf {} +
	find . -type d -name .pytest_cache -exec rm -rf {} +
	find . -name "*.pyc" -delete
	@echo "✅  Clean complete"
