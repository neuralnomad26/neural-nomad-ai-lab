<div align="center">

# Neural Nomad AI Lab

### My learning repo for the Agentic AI certification. NumPy to autonomous agents, documented as I go.

[![Python](https://img.shields.io/badge/Python-3.11%2B-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://python.org)
[![Jupyter](https://img.shields.io/badge/Jupyter-Notebooks-F37626?style=for-the-badge&logo=jupyter&logoColor=white)](https://jupyter.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow?style=for-the-badge)](LICENSE)
[![CI](https://img.shields.io/github/actions/workflow/status/neuralnomad26/neural-nomad-ai-lab/ci.yml?style=for-the-badge&label=CI)](../../actions)
[![Last Commit](https://img.shields.io/github/last-commit/neuralnomad26/neural-nomad-ai-lab?style=for-the-badge)](../../commits/main)

<br/>

> *"The best way to learn AI is to build it , one commit at a time and I'm just getting started."*

</div>

---

## What this is

I'm working through an Agentic AI certification and using this repo to document everything I build along the way. Each module has its own notebooks, exercises, and case studies. The goal is that anyone reading this can follow the progression from the basics to building real AI systems.

This isn't a polished course repo with clean pre-written solutions. It's a working record of actual learning, including the messy parts. Notebooks have real outputs, exercises have my own implementations, and case studies are graded assignments I submitted.

---

## Progress

| # | Module | Topics | Status |
|---|--------|---------|--------|
| 01 | [NumPy & Pandas](modules/01-numpy-pandas/) | Arrays, vectorized ops, DataFrames, data wrangling | ✅ Complete |
| 02 | [Exploratory Data Analysis](modules/02-eda/) | Data preprocessing, feature engineering, statistical visualisations, EDA on Bank Telemarketing and Telecom Churn datasets | ✅ Complete |
| 03 | [ML Foundations](modules/03-ml-foundations/) | Linear Regression, Logistic Regression, Decision Trees, Ridge and Lasso regularisation, K-Means Clustering. Case studies: Employee Retention, Energy Usage Prediction, Paddy Yield, Car Price Prediction | ✅ Complete |
| 04 | [Deep Learning](modules/04-deep-learning/) | Feedforward Neural Networks, House Price Regression, MNIST Digit Classification, Credit Card Fraud Detection (imbalanced classification, AUC-ROC, threshold tuning), Chest X-Ray Pneumonia Detection (CNN), Brain Tumour MRI Classification (EfficientNetB0, Grad-CAM, TTA) | 🟡 In Progress |
| 05 | [NLP](modules/05-nlp/) | Text processing, embeddings, transformers | ⬜ Upcoming |
| 06 | [LLM Engineering](modules/06-llm-engineering/) | Prompt engineering, RAG, fine-tuning, APIs | ⬜ Upcoming |
| 07 | [Agentic AI](modules/07-agentic-ai/) | LangChain, LangGraph, CrewAI, AutoGen | ⬜ Upcoming |

---

## Projects

Full end-to-end projects that go beyond the module exercises.

| Project | Description | Status |
|---------|-------------|--------|
| [Optimising NYC Taxi Operations](projects/01-nyc-taxi-eda/) | EDA on 36M+ NYC yellow taxi trips (2023). Covers temporal demand patterns, pricing analysis, geospatial visualisation, and operational recommendations. Includes a full PDF report. | ✅ Complete |
| [Predictive Maintenance MLOps Pipeline](projects/02-predictive-maintenance-mlops/) | Full MLOps loop on industrial IoT sensor data. Pandera schema validation, MLflow tracking and model registry, Optuna tuning, Evidently drift detection, and per-class SHAP explainability driving a retraining decision. | ✅ Complete |
| [Brain Tumour MRI Classification](modules/04-deep-learning/projects/brain-tumor-mri-classification/) | End-to-end CNN pipeline classifying brain MRI scans into 4 tumour types. EfficientNetB0 transfer learning, Grad-CAM explainability, and Test Time Augmentation. 93.4% validation accuracy. | 🟡 In Progress |

---

## Structure

```
neural-nomad-ai-lab/
│
├── modules/
│   ├── 01-numpy-pandas/
│   │   ├── notebooks/
│   │   ├── exercises/
│   │   └── README.md
│   ├── 02-eda/
│   │   ├── notebooks/
│   │   ├── exercises/
│   │   ├── case-studies/
│   │   ├── datasets/
│   │   └── README.md
│   ├── 03-ml-foundations/
│   │   ├── notebooks/
│   │   ├── exercises/
│   │   ├── case-studies/
│   │   └── README.md
│   └── ...
│
├── projects/
│   ├── 01-nyc-taxi-eda/
│   └── 02-predictive-maintenance-mlops/
│
└── README.md
```

---

## Tech Stack

| Category | Tools |
|----------|-------|
| Core | Python 3.11, Jupyter Lab |
| Data | NumPy, Pandas |
| Visualisation | Matplotlib, Seaborn, Plotly |
| ML | scikit-learn, statsmodels, XGBoost, LightGBM, imbalanced-learn |
| MLOps | MLflow, Optuna, Evidently, SHAP, Pandera |
| Deep Learning | PyTorch, Keras |
| NLP / LLMs | HuggingFace Transformers, OpenAI SDK, Anthropic SDK |
| Agents | LangChain, LangGraph, CrewAI, AutoGen |

---

## Running locally

```bash
git clone https://github.com/neuralnomad26/neural-nomad-ai-lab.git
cd neural-nomad-ai-lab
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
jupyter lab
```

---

## Roadmap

- [x] Module 01 - NumPy & Pandas
- [x] Module 02 - EDA
- [x] Project 01 - NYC Taxi EDA
- [x] Module 03 - ML Foundations
- [x] Project 02 - Predictive Maintenance MLOps Pipeline
- [ ] Module 04 - Deep Learning (in progress)
- [ ] Module 05 - NLP
- [ ] Module 06 - LLM Engineering
- [ ] Module 07 - Agentic AI

---

## Author

**Neeraj** · [GitHub](https://github.com/neuralnomad26)

---

<div align="center">
MIT License
</div>
