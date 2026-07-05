# Module 04 — Deep Learning

> **Status:** 🟡 In Progress &nbsp;|&nbsp; **Track:** Agentic AI Certification

Neural networks from the ground up. Feedforward networks, CNNs for images, LSTMs for sequences, and transfer learning for real-world problems.

---

## Structure

```
04-deep-learning/
├── notebooks/       ← concept-first, standard datasets, learning exercises
├── case-studies/    ← applied problems on real-world domains, single notebook
└── projects/        ← full end-to-end pipelines, portfolio-worthy
```

---

## Notebooks

Core learning notebooks covering theory and implementation.

| Notebook | Architecture | Topics |
|----------|-------------|--------|
| `01_house_price_neural_network.ipynb` | FFNN | Regression, normalisation, MAE, MSE |
| `02_mnist_digit_classification.ipynb` | FFNN | Multi-class classification, softmax, dropout |
| `03_fashion_mnist_architecture_comparison.ipynb` | FCFNN vs CNN vs RCNN | Architecture tradeoffs, parameter efficiency |
| `04_lstm_sentiment_analysis_imdb.ipynb` | Bidirectional LSTM | Sequence modelling, word embeddings, NLP basics |

---

## Case Studies

Applied projects on real-world datasets — single notebook, end-to-end pipeline.

| Notebook | Domain | Architecture | Key Techniques |
|----------|--------|-------------|----------------|
| `credit_card_fraud_detection_FFNN.ipynb` | Finance | FFNN | Class imbalance, AUC-ROC, threshold tuning |
| `chest_xray_pneumonia_detection_CNN.ipynb` | Medical Imaging | CNN | Binary image classification, data augmentation |

---

## Projects

Full end-to-end projects built to portfolio standard.

| Project | Domain | Architecture | Key Results |
|---------|--------|-------------|-------------|
| [Brain Tumour MRI Classification](projects/brain-tumor-mri-classification/) | Medical Imaging | EfficientNetB0 | 93.4% val accuracy, Grad-CAM explainability, TTA |
| [Aircraft Engine Failure Prediction](projects/aircraft-engine-failure-prediction/) | Predictive Maintenance | Stacked LSTM | 96% recall and precision, NASA CMAPSS dataset |
| [Waste Material Segregation](projects/waste-segregation-cnn/) | Waste Management | CNN (from scratch) | 72% test accuracy, macro-F1 0.72, 7-class, class weighting |

---

## Key Concepts Covered

- **Feedforward Networks** - layers, activations, backpropagation, weight initialisation
- **Convolutional Neural Networks** - filters, feature maps, pooling, receptive field
- **Transfer Learning** - frozen base + custom head, EfficientNetB0
- **Recurrent Networks** - LSTM gates, return_sequences, stacked LSTMs
- **Explainability** - Grad-CAM for CNN visualisation
- **Training Techniques** - dropout, batch normalisation, EarlyStopping, MinMaxScaler
- **Class Imbalance** - AUC-ROC, threshold tuning, class weights

---

[← Module 03](../03-ml-foundations/README.md) | [Back to main README](../../README.md) | [Next: Module 05 →](../05-nlp/README.md)
