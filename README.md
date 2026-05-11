<div align="center">

# 🤖 Agentic AI Mastery

### A structured, production-grade learning repository documenting a complete journey from Python fundamentals to Agentic AI systems

[![Python](https://img.shields.io/badge/Python-3.11%2B-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://python.org)
[![Jupyter](https://img.shields.io/badge/Jupyter-Notebooks-F37626?style=for-the-badge&logo=jupyter&logoColor=white)](https://jupyter.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)](LICENSE)
[![CI](https://img.shields.io/github/actions/workflow/status/neuralnomad26/neural-nomad-ai-lab/ci.yml?style=for-the-badge&label=CI)](../../actions)
[![Last Commit](https://img.shields.io/github/last-commit/neuralnomad26/neural-nomad-ai-lab?style=for-the-badge)](../../commits/main)
[![Modules](https://img.shields.io/badge/Modules-7-blueviolet?style=for-the-badge)](#-learning-roadmap)

<br/>

> **From NumPy arrays to autonomous AI agents** — every concept, exercise, and project documented with production-quality code and clear explanations.

[Explore Modules](#-learning-roadmap) · [Quick Start](#-quick-start) · [Projects](#-projects) · [Roadmap](#-roadmap)

</div>

---

## 📖 About This Repository

This repository is a living portfolio of my **Agentic AI certification journey**. It is organized as a clean monorepo where each module builds on the previous one — from core Python data science tools all the way to building multi-agent AI systems.

Every notebook is written with clarity and production discipline: clean code, meaningful comments, real datasets, and exercises with worked solutions.

**What makes this different from a typical course repo:**
- Each module has a dedicated `README.md` explaining the why, not just the what
- Exercises are separated from solutions — you can genuinely test yourself
- Code follows professional Python standards (PEP 8, type hints, docstrings)
- Notebooks are designed to be readable top-to-bottom, like technical articles
- The repo grows continuously — it reflects real, ongoing learning

---

## 🗺 Learning Roadmap

| # | Module | Topics | Status |
|---|--------|---------|--------|
| 01 | [NumPy & Pandas](modules/01-numpy-pandas/) | Arrays, vectorized ops, DataFrames, data wrangling | 🟡 In Progress |
| 02 | [Exploratory Data Analysis](modules/02-eda/) | Statistical analysis, visualizations, data quality | ⬜ Upcoming |
| 03 | [ML Foundations](modules/03-ml-foundations/) | Supervised & unsupervised learning, scikit-learn | ⬜ Upcoming |
| 04 | [Deep Learning](modules/04-deep-learning/) | Neural networks, PyTorch / Keras fundamentals | ⬜ Upcoming |
| 05 | [NLP](modules/05-nlp/) | Text processing, embeddings, transformers | ⬜ Upcoming |
| 06 | [LLM Engineering](modules/06-llm-engineering/) | Prompt engineering, RAG, fine-tuning, APIs | ⬜ Upcoming |
| 07 | [Agentic AI](modules/07-agentic-ai/) | LangChain, LangGraph, CrewAI, AutoGen | ⬜ Upcoming |

> **Legend:** ✅ Complete · 🟡 In Progress · ⬜ Upcoming

---

## 🚀 Quick Start

### Prerequisites

- Python 3.11+
- [pip](https://pip.pypa.io) or [conda](https://conda.io)
- [Jupyter Lab](https://jupyterlab.readthedocs.io) (recommended) or Jupyter Notebook

### Setup

```bash
# 1. Clone the repository
git clone https://github.com/neuralnomad26/neural-nomad-ai-lab.git
cd neural-nomad-ai-lab

# 2. Create and activate a virtual environment
python -m venv .venv
source .venv/bin/activate        # macOS/Linux
# .venv\Scripts\activate         # Windows

# 3. Install dependencies
pip install -r requirements.txt

# 4. Launch Jupyter Lab
jupyter lab
```

Or use the Makefile shortcut:

```bash
make setup   # creates venv + installs deps
make jupyter # launches Jupyter Lab
```

---

## 📁 Repository Structure

```
neural-nomad-ai-lab/
│
├── modules/                         # Core learning modules (ordered)
│   ├── 01-numpy-pandas/
│   │   ├── notebooks/               # Concept walkthroughs
│   │   ├── exercises/               # Practice problems
│   │   ├── solutions/               # Worked solutions
│   │   └── README.md
│   ├── 02-eda/
│   │   ├── notebooks/
│   │   ├── datasets/                # Local datasets used in notebooks
│   │   └── README.md
│   ├── 03-ml-foundations/
│   ├── 04-deep-learning/
│   ├── 05-nlp/
│   ├── 06-llm-engineering/
│   └── 07-agentic-ai/
│       ├── langchain/
│       ├── langgraph/
│       ├── crewai/
│       └── autogen/
│
├── projects/                        # End-to-end portfolio projects
├── assets/images/                   # Diagrams, screenshots
├── docs/                            # Extended documentation
├── scripts/                         # Setup and utility scripts
│
├── .github/
│   ├── workflows/                   # CI/CD pipelines
│   ├── ISSUE_TEMPLATE/              # Bug & feature templates
│   └── pull_request_template.md
│
├── requirements.txt
├── Makefile
├── .editorconfig
└── README.md
```

---

## 🧠 Module Highlights

### Module 01 — NumPy & Pandas
The foundation of all data science work in Python. Topics include:
- N-dimensional arrays, broadcasting, vectorized operations
- DataFrame manipulation, merging, reshaping, aggregation
- Performance: when to use NumPy vs Pandas vs pure Python

### Module 02 — Exploratory Data Analysis
Learning to understand data before modelling. Topics include:
- Univariate and multivariate statistical analysis
- Matplotlib, Seaborn, and Plotly visualizations
- Missing value strategies, outlier detection, feature distributions

### Module 07 — Agentic AI *(the destination)*
Building autonomous AI systems that plan, reason, and act. Topics include:
- LangChain: chains, tools, memory, retrieval
- LangGraph: stateful multi-step agent graphs
- CrewAI: role-based multi-agent collaboration
- AutoGen: conversational multi-agent frameworks
- Tool use, function calling, ReAct patterns
- Building production-ready agentic pipelines

---

## 🛠 Tech Stack

| Category | Tools |
|----------|-------|
| **Core** | Python 3.11, Jupyter Lab |
| **Data** | NumPy, Pandas, Polars |
| **Visualisation** | Matplotlib, Seaborn, Plotly |
| **ML** | scikit-learn, XGBoost |
| **Deep Learning** | PyTorch, Keras |
| **NLP / LLMs** | HuggingFace Transformers, OpenAI SDK, Anthropic SDK |
| **Agents** | LangChain, LangGraph, CrewAI, AutoGen |
| **Dev Tooling** | Ruff, pre-commit, pytest, nbval |

---

## 📦 Projects

End-to-end projects that apply skills from multiple modules:

| Project | Description | Modules Used | Status |
|---------|-------------|--------------|--------|
| *(Coming soon)* | First project will be added after Module 02 | 01, 02 | ⬜ |

---

## 🧪 Running Tests

Notebooks are validated using [nbval](https://github.com/computationalmodelling/nbval) to ensure they execute clean from top to bottom.

```bash
# Lint all Python files
make lint

# Run notebook validation
make test

# Check notebook outputs are reproducible
make nb-check
```

---

## 🤝 Contributing

This is primarily a personal learning repository, but corrections and suggestions are welcome.

- Found a bug in a notebook? Open an [issue](../../issues/new/choose)
- Want to suggest a resource? Open a [discussion](../../discussions)
- See [CONTRIBUTING.md](CONTRIBUTING.md) for full guidelines

---

## 📋 Roadmap

- [x] Repository setup and structure
- [ ] Complete Module 01 — NumPy & Pandas
- [ ] Complete Module 02 — EDA
- [ ] Complete Module 03 — ML Foundations
- [ ] Complete Module 04 — Deep Learning
- [ ] Complete Module 05 — NLP
- [ ] Complete Module 06 — LLM Engineering
- [ ] Complete Module 07 — Agentic AI
- [ ] Build 3 end-to-end portfolio projects
- [ ] Write a technical blog post for each module

---

## 📄 License

This project is licensed under the MIT License — see [LICENSE](LICENSE) for details.

---

## 👤 Author

**Neeraja Ithak**

> *"The best way to learn AI is to build it — one commit at a time."*

---

<div align="center">

If this repository helps you, consider giving it a ⭐

</div>
