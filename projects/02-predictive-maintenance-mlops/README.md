# Project 02: Predictive Maintenance MLOps Pipeline

> **Course Project: MLOps (Pandera, MLflow, Optuna, Evidently, SHAP)**

An end-to-end local MLOps workflow for multi-class machine failure prediction on industrial IoT sensor data. The point of this project is not the classifier itself, it is the full loop around it: validate, train, track, tune, monitor, explain, decide.

---

## Problem Statement

A heavy-equipment manufacturer runs over 10,000 machines that each stream six sensor readings. When a machine fails, production halts at a cost of 8 to 15 lakh rupees per hour of downtime. The task is to predict whether a machine is running normally or heading toward one of four specific failure modes, and to build enough monitoring around the model to know when it has gone stale.

The interesting part is not the accuracy. It is that a batch of data can be completely valid and still be wrong for the model, and only distribution monitoring catches that.

---

## Dataset

| File | Description | Rows |
|------|-------------|------|
| `data/train.csv` | Historical labelled baseline, used for training and as the drift reference | 6,993 |
| `data/current.csv` | Stable post-deployment batch under normal operating conditions | 1,499 |
| `data/stress.csv` | Heavy-load post-deployment batch, schema-valid but distributionally shifted | 1,499 |

Six sensor features (machine quality type, air temperature, process temperature, rotational speed, torque, tool wear) plus a five-class target.

**The target is severely imbalanced:**

| Code | Class | Count | Share |
|------|-------|-------|-------|
| 0 | No Failure | 6,762 | 96.70% |
| 1 | TWF (Tool Wear Failure) | 30 | 0.43% |
| 2 | HDF (Heat Dissipation Failure) | 76 | 1.09% |
| 3 | PWF (Power Failure) | 56 | 0.80% |
| 4 | OSF (Overstrain Failure) | 69 | 0.99% |

A 225:1 majority-to-rarest ratio, which is what makes accuracy useless here.

---

## Pipeline

| Stage | Tool | What it does |
|-------|------|--------------|
| Validate | Pandera | Schema with physical operating limits on all 7 columns, lazy validation on the stress batch |
| Engineer | pandas, numpy | `Power_W` (torque times angular velocity) and `Temp_diff` (process minus ambient) |
| Balance | imbalanced-learn | Stratified 80/20 split, then SMOTE with `k_neighbors=3` on the training split only |
| Track | MLflow | Four models logged to a SQLite backend with per-class F1 for all five classes |
| Tune | Optuna | 30-trial TPE study optimising macro F1, best model registered and promoted to a production alias |
| Monitor | Evidently | Dataset and per-column drift against the training reference, HTML reports for both batches |
| Explain | SHAP | Per-class TreeExplainer analysis, read class by class rather than collapsed into one ranking |

---

## Key Results

**Model selection.** XGBoost won on macro F1 at 0.7481, ahead of Random Forest (0.7355), LightGBM (0.7296) and Logistic Regression (0.5312). Optuna tuning raised it to 0.7672, a 2.56% gain.

**The metric actually mattered.** Random Forest had the best accuracy of any model at 0.9850 but its TWF F1 was 0.0000, meaning it never once predicted a tool wear failure. Selecting on accuracy would have shipped a model structurally blind to an entire failure mode. The two metrics picked different winners.

**Drift detection.** The current batch showed zero drifted features. The stress batch drifted on three of five:

| Feature | Wasserstein | Reference mean | Stress mean | Change |
|---------|-------------|----------------|-------------|--------|
| Tool wear | 0.6455 | 107.68 | 148.87 | +38.25% |
| Torque | 0.4739 | 40.00 | 44.72 | +11.82% |
| Rotational speed | 0.2354 | 1539.02 | 1497.07 | -2.73% |

Both temperature columns were stable. Critically, the stress batch passed Pandera validation with zero violations, so nothing in the data quality layer would have raised a flag.

**Explainability.** Each failure mode has a distinct driver, which is why multiclass SHAP has to be read per class:

| Class | Top driver | Mean absolute SHAP |
|-------|-----------|--------------------|
| TWF | Tool wear | 3.1313 |
| HDF | Temp_diff | 2.6996 |
| PWF | Power_W | 3.2392 |
| OSF | Torque (Tool wear a close second at 1.8693) | 1.9023 |

For PWF the engineered `Power_W` beat raw torque by roughly 8x and raw rotational speed by roughly 480x, because PWF is bimodal in torque and fails at both ends of the power envelope. No single threshold on a raw column separates it.

**The decision.** OSF is the at-risk class under stress conditions. Its two dominant SHAP drivers, torque and tool wear, are exactly the two features that drifted hardest, and both moved upward. Retraining is recommended with stress-period data included, and drift alerts should fire on those two features individually rather than on aggregate dataset drift.

**The rare class stayed hard.** TWF F1 went from 0.1333 down to 0.0690 after tuning, while macro F1 went up. With only 30 real samples (24 for training, 6 for validation), SMOTE resamples the same small corner of feature space rather than creating new information, and the optimiser correctly traded a class it could not learn for gains on OSF and PWF. That is a data collection problem, not a modelling one.

---

## Files

```
02-predictive-maintenance-mlops/
├── MLOps_Assignment_NeerajN.ipynb   <- full pipeline notebook
├── requirements.txt                 <- pinned versions for reproducibility
├── data/
│   ├── train.csv                    <- labelled baseline
│   ├── current.csv                  <- stable production batch
│   └── stress.csv                   <- drifted heavy-load batch
└── README.md
```

Running the notebook also generates `eda_distributions.png`, `drift_current.html`, `drift_stress.html`, `best_model.pkl`, `label_encoder.pkl` and `shap_per_class.png`, none of which are committed.

---

## Running It

```bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
jupyter lab
```

On macOS, XGBoost and LightGBM need OpenMP, so `brew install libomp` first if the imports fail.

MLflow tracks to `sqlite:///mlflow.db` in the working directory. To browse the runs after execution:

```bash
mlflow ui --backend-store-uri sqlite:///mlflow.db
```

One caveat on reproducibility: the Optuna study is seeded, but XGBoost's floating-point reduction order depends on thread count, so the search path and final hyperparameters vary between machines. Macro F1 lands around 0.76 either way. Everything else in the notebook is deterministic.

---

## Skills Demonstrated

`pandera` `mlflow` `optuna` `evidently` `shap` `xgboost` `lightgbm` `scikit-learn` `imbalanced-learn`

Schema validation, class imbalance handling, leakage-free resampling, experiment tracking, model registry and aliasing, hyperparameter optimisation, data drift detection, multiclass model explainability, connecting model behaviour to maintenance decisions.

---

[Back to Projects](../README.md) | [Back to Main README](../../README.md)
