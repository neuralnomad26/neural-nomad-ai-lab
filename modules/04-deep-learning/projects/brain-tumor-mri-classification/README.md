# Brain Tumour MRI Classification (CNN + Transfer Learning)

End-to-end pipeline that classifies brain MRI scans into **4 categories** (Glioma, Meningioma, Pituitary Tumour, No Tumour) using EfficientNetB0 transfer learning, and explains each prediction visually with **Grad-CAM**.

> **Result:** 93.4% validation accuracy, 88.0% test accuracy across 4 tumour types, plus anatomically meaningful Grad-CAM heatmaps.

## Problem

Brain tumours affect over 300,000 people a year, and different tumour types need completely different treatment. Misclassification can mean the wrong surgery or a missed diagnosis. A model that not only classifies but also highlights the region it looked at is far more useful to a radiologist than a black-box label.

## Approach

| Stage | What |
|-------|------|
| **Dataset** | 7,023 MRI images from Kaggle, balanced across 4 classes (1,400 train + 300 test each) |
| **Preprocessing** | Resize to 224x224, `ImageDataGenerator` with augmentation on the training set |
| **Baseline** | Simple CNN trained from scratch as a benchmark |
| **Main model** | EfficientNetB0 (ImageNet pretrained, frozen base) + Dropout(0.3) + Dense(128) + Dropout(0.2) + Dense(4, softmax) |
| **Training** | Adam (1e-3), `EarlyStopping` on val accuracy (patience 5), up to 20 epochs |
| **Explainability** | Grad-CAM heatmaps to show which brain region drove each prediction |
| **Evaluation** | Precision, recall, F1 per tumour type + confusion matrix |

## Key findings

- **93.4% validation / 88.0% test accuracy** with roughly 4M frozen and 164K trainable parameters.
- **Grad-CAM showed the model learned anatomically correct regions with no medical supervision:** Glioma activates on deep brain tissue (invasive growth), Meningioma along the skull boundary (meningeal origin), No Tumour on the central ventricular system, Pituitary broadly across the upper brain.
- **Hardest class: Glioma (68% recall)**, with 83 gliomas misclassified as meningioma. This mirrors real clinical difficulty, where glioma vs meningioma often needs extra MRI sequences or a biopsy. The model is confused where radiologists are confused.

## Key techniques

Transfer learning (EfficientNetB0), Grad-CAM explainability, data augmentation, frozen base plus custom head, per-class clinical metrics, confusion-matrix error analysis.

## Limitations

Single-source dataset with controlled imaging conditions. Real deployment would need validation across multiple scanners, field strengths, and patient demographics first.

## Run

Open `brain_tumor_mri_classification_CNN.ipynb` in Google Colab (GPU runtime recommended). The MRI dataset loads from Kaggle/Google Drive; adjust the paths in the data-loading cells to your own copy.
