# Contributing to Agentic AI Mastery

Thank you for taking the time to look at this repository. While this is primarily a personal learning portfolio, contributions in the form of corrections, suggestions, and discussions are genuinely welcome.

---

## Ways to Contribute

### 🐛 Report a Bug
If a notebook fails to run, produces incorrect output, or contains a factual error:
1. Check [existing issues](../../issues) to avoid duplicates
2. Open a [bug report](../../issues/new?template=bug_report.yml)
3. Include the notebook path, Python version, and error output

### 💡 Suggest an Improvement
If you know a better way to explain a concept, a cleaner implementation, or a useful resource:
1. Open a [feature / suggestion issue](../../issues/new?template=feature_request.yml)
2. Explain what you'd improve and why

### 📚 Add a Resource
Found a great paper, article, or tutorial relevant to one of the modules? Open an issue with the link and a one-line summary.

---

## Development Setup

```bash
git clone https://github.com/neuralnomad26/neural-nomad-ai-lab.git
cd neural-nomad-ai-lab
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
pre-commit install
```

---

## Code Standards

- **Python**: PEP 8, formatted with [Ruff](https://docs.astral.sh/ruff/)
- **Notebooks**: Clean top-to-bottom execution; restart kernel and run all before committing
- **Commits**: Follow [Conventional Commits](https://www.conventionalcommits.org/)
  - `feat:` new notebook or exercise
  - `fix:` correction to existing content
  - `docs:` documentation changes
  - `chore:` repo maintenance

---

## Pull Request Process

1. Fork the repository
2. Create a branch: `git checkout -b fix/module-01-numpy-typo`
3. Make your changes
4. Run `make lint` and `make nb-check` — both must pass
5. Open a PR against `main` using the PR template
6. PRs require one approval before merging

---

## Notebook Guidelines

- Each notebook should run fully with a fresh kernel (Kernel → Restart & Run All)
- Use markdown cells to explain concepts — code alone is not enough
- Prefer explicit variable names over single-letter names in explanatory cells
- Large datasets should not be committed — use a download script or link instead
- Outputs should be cleared before committing (handled by pre-commit hook)

---

## Code of Conduct

All interactions in this repository are governed by the [Code of Conduct](CODE_OF_CONDUCT.md). Please read it before contributing.
