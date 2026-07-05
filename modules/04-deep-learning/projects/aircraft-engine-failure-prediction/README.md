# Aircraft Engine Failure Prediction (LSTM)

Predictive-maintenance model that answers a binary question from an engine's sensor history: **will this engine fail within the next 30 cycles?** Built as a stacked LSTM on the NASA CMAPSS dataset.

> **Result:** 96% test recall and 96% test precision, with only 2 errors across 93 test engines.

## Problem

Aircraft engines must be kept in good condition for passenger safety, but maintenance is expensive, so you do not want to over-service them either. If a fault is caught too late, cost rises sharply or the engine needs replacing. Predicting failure ahead of time allows timely, affordable maintenance. The dangerous error here is a **false negative** (a failing engine marked healthy), so recall matters most.

## Approach

| Stage | What |
|-------|------|
| **Dataset** | NASA CMAPSS FD001: 100 training engines, 100 test engines, 21 sensors |
| **Labelling** | Compute Remaining Useful Life per cycle, label 1 if failure is within 30 cycles |
| **Preprocessing** | MinMaxScaler on sensor/setting features |
| **Sequences** | Sliding windows of 50 cycles per engine, 25 features each |
| **Model** | Stacked LSTM: 100 units (return_sequences), Dropout(0.2), 50 units, Dropout(0.2), Dense sigmoid (~134K params) |
| **Training** | `EarlyStopping` (patience 3 on val loss), batch size 200, up to 20 epochs |
| **Evaluation** | Recall, precision, confusion matrix on the held-out test engines |

## Key findings

- **97.95% best validation accuracy**, **96% test recall and 96% test precision**, with **2 misclassifications out of 93 engines**.

  |                 | Predicted Healthy | Predicted Failing |
  |-----------------|-------------------|-------------------|
  | Actually Healthy | 67 (TN) | 1 (FP) |
  | Actually Failing | 1 (FN) | 24 (TP) |

- **What the errors mean:** the 1 false positive sends one healthy engine for unnecessary maintenance (low cost). The 1 false negative misses one failing engine, which is the case a real system works hardest to avoid.
- **Why LSTM:** sensor degradation is sequential, later readings only make sense relative to earlier ones. LSTM memory retains information across the 50-cycle window and detects gradual drift, which a feedforward network treating each cycle independently would miss.

## Key techniques

Sequence modelling with stacked LSTMs, sliding-window feature engineering, Remaining Useful Life labelling, MinMaxScaler normalisation, recall-focused evaluation for safety-critical decisions.

## What would improve it

Predict exact RUL (regression) instead of a binary window, train across all 4 CMAPSS datasets, tune the decision threshold to cut false negatives further, and add an attention mechanism to weight which cycles matter most.

## Run

Open `aircraft_engine_failure_prediction_lstm.ipynb` in Google Colab. Requires the NASA CMAPSS FD001 files (`train_FD001.txt`, `test_FD001.txt`, `RUL_FD001.txt`); adjust the paths in the data-loading cells to your own copy.
