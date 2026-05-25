# Project 01 — Optimising NYC Taxi Operations

> **Course Project · Module 02: Exploratory Data Analysis**

An end-to-end EDA of the NYC Yellow Taxi network using the full 2023 dataset (36M+ trips). The goal was to uncover operational patterns, pricing dynamics, and customer behaviour to give fleet operators and city planners data-backed recommendations.

---

## Problem Statement

NYC's yellow taxi network generates enormous volumes of trip data that, if properly analysed, can drive smarter dispatch decisions, revenue optimisation, and improved passenger experience. This project asks: **what does a full year of trip data reveal about when, where, and how people use yellow taxis — and what should operators do about it?**

---

## Dataset

| File | Description | Size |
|------|-------------|------|
| `datasets/sampled_nyc_taxi_2023.parquet` | Stratified sample (1.83M records) drawn from 36M+ raw trips | ~44 MB |
| `datasets/clean_nyc_taxi_2023.parquet` | Cleaned version after outlier removal and feature engineering | ~43 MB |
| `datasets/taxi_zones/` | NYC TLC taxi zone shapefiles for geospatial analysis | ~1.5 MB |

> Raw monthly trip records (12 × ~75 MB parquet files) are not committed — download from [NYC TLC Trip Record Data](https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page).

**19 variables** including pickup/dropoff timestamps, location IDs, trip distance, fare components, payment type, and passenger count.

---

## Analysis Structure

| Section | Focus |
|---------|-------|
| 01 · Introduction & Problem Statement | Business context, objectives, analytical approach |
| 02 · Dataset Overview | Schema, data types, memory footprint |
| 03 · Data Preparation & Cleaning | Missing values, outliers, feature engineering |
| 04 · Temporal Patterns | Hourly, daily, monthly demand cycles |
| 05 · Financial Analysis & Geography | Revenue distribution, zone-level heatmaps |
| 06 · Operational Efficiency | Trip speed, distance, idle time analysis |
| 07 · Pricing Analysis | Fare components, surge patterns, tip behaviour |
| 08 · Customer Experience | Passenger counts, payment preferences |
| 09 · Conclusions & Recommendations | Actionable insights for fleet optimisation |

---

## Key Findings

- **Peak demand** concentrates in Thursday–Friday evenings (5–9 PM); early-morning weekday commutes drive secondary peaks
- **Manhattan core zones** (Midtown, JFK corridor) generate disproportionate revenue — top 10 zones account for the majority of fare income
- **Cash payment share** has declined significantly; card dominates with higher average tips
- **Short trips under 2 miles** represent the highest volume but lowest revenue efficiency; longer airport runs have the best fare-per-minute ratio
- **Seasonal demand dip** in July–August is recoverable through dynamic pricing adjustments

---

## Files

```
01-nyc-taxi-eda/
├── EDA_NYC_Taxi_Analysis_Neeraj_N.ipynb   ← full analysis notebook
├── EDA_NYC_Taxi_Analysis_Neeraj_N.pdf     ← detailed findings report
├── datasets/
│   ├── sampled_nyc_taxi_2023.parquet
│   ├── clean_nyc_taxi_2023.parquet
│   └── taxi_zones/                        ← shapefiles for geo analysis
└── README.md
```

---

## Skills Demonstrated

`pandas` · `numpy` · `matplotlib` · `seaborn` · `plotly` · `geopandas` · `parquet` · stratified sampling · outlier detection · time-series EDA · geospatial visualisation · statistical analysis · business insight communication

---

[← Back to Projects](../README.md) | [Back to Main README](../../README.md)
