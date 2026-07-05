# Waste Material Segregation (CNN)

Multi-class image classifier that sorts waste into **7 categories** (Cardboard, Food Waste, Glass, Metal, Other, Paper, Plastic) to support recycling and reduce landfill. Built as a convolutional neural network **from scratch** (no pre-trained backbone).

> **Result:** 72% test accuracy, macro-F1 0.72, balanced across all 7 classes, on a held-out 80/10/10 split.

## Problem

Automated waste sorting needs to recognise material type from a photo. The dataset is **7,625 images** (one folder per class), and it is **strongly imbalanced**: Plastic has 2,295 images while Cardboard has only 540 (about 4.3x). "Other" is a heterogeneous catch-all (even non-object images), making it the hardest class.

## Approach

| Stage | What |
|-------|------|
| **Data prep** | Load, force RGB, measure dimensions (all uniformly 256x256), resize to 128x128, one-hot encode, stratified 80/10/10 split |
| **Model** | 3 conv blocks (Conv, BatchNorm, MaxPool, filters 64/128/256) plus GlobalAveragePooling, Dense, Dropout, 7-way softmax |
| **Training** | Adam with `ReduceLROnPlateau` schedule, `EarlyStopping`, **class weights** to counter imbalance |
| **Evaluation** | Precision, recall, F1 per class plus confusion matrix on the untouched test set |
| **Augmentation** | Flip, rotation, zoom experiment, compared fairly against the baseline |

## The interesting part: diagnose and fix

1. **First model collapsed** to the majority class. Accuracy froze at exactly **30.1%**, which is precisely Plastic's share of the data. It was predicting only Plastic.
2. **Diagnosed** via that exact-percentage tell, then **fixed** with class weights, GlobalAveragePooling (removed a 4.2M-param `Flatten` bottleneck), and a lower learning rate, so the model actually learned (about 53%).
3. **Tuned** for accuracy (wider filters, dropout 0.3, LR schedule, longer training) to reach **72% test accuracy**.
4. **Augmentation first appeared to fail** (18%, unstable). Diagnosed as non-convergence (violent validation-loss spikes), then **fixed** (gentler transforms, patient callbacks, more epochs) to a stable 70%.

## Results

| Model | Test accuracy | Macro-F1 | Notes |
|-------|--------------|----------|-------|
| **Non-augmented (final)** | **72%** | **0.72** | Selected model |
| Augmented (fixed) | 70% | 0.70 | More robust, smaller train/val gap |

Strongest classes: **Metal (F1 0.83)**, Plastic (0.77). Weakest: **Other (0.62)**, as predicted from the data analysis.

## Key techniques

Class imbalance handling, BatchNormalization, Dropout, GlobalAveragePooling vs Flatten, learning-rate scheduling, EarlyStopping, data augmentation, stratified train/val/test split, per-class metrics and confusion matrix.

## Run

Open `waste_material_segregation_CNN.ipynb` in Google Colab (GPU runtime recommended). The dataset loads from Google Drive; adjust the path in the data-loading cell to your own copy.
