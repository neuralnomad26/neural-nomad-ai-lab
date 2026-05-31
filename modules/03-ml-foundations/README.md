# Module 03 - Machine Learning Foundations

> **Status:** 🟡 In Progress &nbsp;|&nbsp; **Track:** Agentic AI Certification

Supervised and unsupervised learning from first principles. This module covers the full ML workflow, from raw data to production-ready models, with a focus on building genuine understanding rather than just calling library functions.

---

## Progress Overview

| Category | Completed | Total |
|----------|-----------|-------|
| Learning Notebooks | 3 | 11 |
| Exercises | 1 | 1 |
| Case Studies | 4 | 4 |

---

## Learning Objectives

- Understand the bias-variance tradeoff and how it guides model selection
- Implement and evaluate key supervised learning algorithms from scratch
- Apply unsupervised techniques for clustering and dimensionality reduction
- Build robust ML pipelines with proper train/validation/test splits
- Tune hyperparameters systematically with cross-validation
- Apply regularisation techniques to prevent overfitting

---

## Notebooks

Core learning notebooks covering theory and implementation.

### Supervised Learning

| Notebook | Topics | Status |
|----------|--------|--------|
| `01_linear_regression.ipynb` | OLS from scratch, TSS/RSS/ESS, R², RMSE, MAE, MAPE, residual analysis | ✅ Complete |
| `02_logistic_regression.ipynb` | Binary classification, sigmoid, log loss, confusion matrix, ROC-AUC — Titanic survival prediction | ✅ Complete |
| `03_decision_trees.ipynb` | Splits, depth, pruning, GridSearchCV, regression tree, feature importance | ✅ Complete |
| `04_ensemble_methods.ipynb` | Random Forest, Gradient Boosting, XGBoost | ⬜ Upcoming |
| `05_svm.ipynb` | Margin, kernel trick, SVR | ⬜ Upcoming |
| `06_model_evaluation.ipynb` | Accuracy, F1, ROC-AUC, confusion matrix, calibration | ⬜ Upcoming |
| `07_pipelines_and_tuning.ipynb` | sklearn Pipeline, GridSearchCV, cross-validation | ⬜ Upcoming |

### Unsupervised Learning

| Notebook | Topics | Status |
|----------|--------|--------|
| `08_kmeans_clustering.ipynb` | Inertia, elbow method, silhouette score | ⬜ Upcoming |
| `09_hierarchical_clustering.ipynb` | Dendrograms, linkage methods | ⬜ Upcoming |
| `10_pca.ipynb` | Variance explained, scree plots, reconstruction | ⬜ Upcoming |
| `11_tsne_umap.ipynb` | High-dimensional visualisation | ⬜ Upcoming |

---

## Exercises

Hands-on implementations to reinforce notebook concepts.

| File | Description | Status |
|------|-------------|--------|
| `02_linear_regression_cars.ipynb` | Car price prediction using linear regression from scratch with 4 features | ✅ Complete |

---

## Case Studies

Applied projects on real-world datasets built to consolidate learning across the full ML pipeline.

| File | Dataset | Key Techniques | Status |
|------|---------|----------------|--------|
| `LR_Paddy_Yield_Prediction.ipynb` | Agricultural yield data | Linear regression, VIF, RFE, full statsmodels OLS pipeline | ✅ Complete |
| `LR_Energy_Usage_Prediction.ipynb` | UCI Smart Home Energy (19,735 rows) | Timestamp feature engineering, correlation-based sensor reduction (18 to 2), statsmodels OLS, RFE to 8 features | ✅ Complete |
| `LR_Employee_Retention.ipynb` | HR employee data (74,610 rows) | Logistic regression, MinMaxScaler, RFE to 15 features, iterative VIF reduction below 5, statsmodels p-values, optimal cutoff via ROC and precision-recall | ✅ Complete |
| `Regularisation_Car_Price_Prediction.ipynb` | AutoScout used cars (15,914 rows) | Log transform on skewed target, feature-list count engineering, baseline LR vs Ridge vs Lasso, two-stage alpha fine-tuning, coefficient shrinkage analysis | ✅ Complete |

---

## Datasets

| File | Used In | Source |
|------|---------|--------|
| `datasets/heart_disease_data.csv` | 03_decision_trees | Synthetic (303 rows, clinical features) |
| `datasets/Employee_data.csv` | LR_Employee_Retention | upGrad course materials |
| `datasets/energydata_complete.csv` | LR_Energy_Usage_Prediction | UCI ML Repository - Appliances energy prediction (Candanedo et al., 2017) |
| `datasets/Car_Price_data.csv` | Regularisation_Car_Price_Prediction | AutoScout - German online used car trading platform |

---

## Key Concepts Covered So Far

- **OLS Linear Regression** - closed-form solution, coefficient interpretation, R² decomposition
- **Logistic Regression** - sigmoid function, log loss, binary classification
- **Feature Selection** - VIF for multicollinearity, RFE for recursive elimination
- **Model Evaluation** - confusion matrix, precision, recall, F1, ROC-AUC, optimal cutoff
- **Regularisation** - Ridge (L2) and Lasso (L1), alpha tuning, coefficient shrinkage
- **Data Leakage Prevention** - fit scalers and encoders on train only

---

[← Module 02](../02-eda/README.md) | [Back to main README](../../README.md) | [Next: Module 04 →](../04-deep-learning/README.md)
