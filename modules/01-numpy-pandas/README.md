# Module 01 - NumPy & Pandas

> **Status:** ✅ Complete &nbsp;|&nbsp; **Track:** Agentic AI Certification

The foundation of all data science work in Python. This module builds deep intuition for array-based computation and tabular data manipulation, skills used in every subsequent module.

---

## Progress Overview

| Category | Completed | Total |
|----------|-----------|-------|
| NumPy Notebooks | 11 | 11 |
| Pandas Notebooks | 11 | 11 |
| Exercises | 2 | 2 |

---

## Learning Objectives

- Create and manipulate N-dimensional NumPy arrays with confidence
- Understand broadcasting rules and write vectorized code without loops
- Load, clean, reshape, merge, and aggregate data with Pandas
- Choose the right data structure for the right task
- Write efficient, readable data manipulation code that scales

---

## Notebooks

### NumPy

| Notebook | Topics |
|----------|--------|
| `01 Creating NumPy arrays and basic array attributes.ipynb` | Array creation, shapes, dtypes, memory layout |
| `02 Indexing and slicing NumPy arrays.ipynb` | Basic indexing, fancy indexing, boolean masks |
| `03 More on indexing and slicing.ipynb` | Advanced slicing patterns and edge cases |
| `04 NumPy array manipulations.ipynb` | Stacking, splitting, flattening, transposing |
| `05 Reshaping NumPy arrays.ipynb` | reshape, ravel, newaxis |
| `06 Reshaping behaviour.ipynb` | Row-major vs column-major, contiguous arrays |
| `07 Reshaping problem.ipynb` | Applied reshaping challenges |
| `08 Broadcasting in NumPy.ipynb` | Broadcasting rules, common patterns, pitfalls |
| `09 Mathematical operations on NumPy arrays.ipynb` | ufuncs, aggregations, axis operations |
| `10 Example of mathematical operations on NumPy arrays.ipynb` | Applied mathematical operation examples |
| `11 Image manipulations.ipynb` | Images as arrays, pixel operations, transformations |

### Pandas

| Notebook | Topics |
|----------|--------|
| `20 Creating Pandas DataFrames and basic DataFrame attributes.ipynb` | Series, DataFrame, index, dtypes |
| `21 Importing data in Pandas and descriptive methods.ipynb` | read_csv, read_json, info, describe, head |
| `22 Loading data into Google Colab.ipynb` | File upload, Google Drive, path handling in Colab |
| `23 Indexing and slicing Pandas DataFrames.ipynb` | loc, iloc, boolean filtering |
| `24 Querying Pandas DataFrames.ipynb` | query method, conditional selection |
| `25 Operations on Pandas DataFrames.ipynb` | Column operations, type casting, string ops |
| `26 Filtering, broadcasting, and applying functions on a Pandas DataFrame.ipynb` | apply, map, vectorized operations |
| `27 Merging Pandas DataFrames.ipynb` | merge, concat, join types |
| `28 Merging and broadcasting in Pandas DataFrames.ipynb` | Combined merge and broadcast patterns |
| `29 Grouping and aggregating Pandas DataFrames.ipynb` | groupby, agg, transform |
| `30 Grouping and aggregating data example.ipynb` | Applied groupby on real datasets |

---

## Exercises

| File | Focus |
|------|-------|
| `numpy_assignment_01.ipynb` | Array creation, reshaping, and broadcasting |
| `pandas_assignment_02.ipynb` | Data loading, cleaning, and transformation |

---

## Datasets

| File | Used In |
|------|---------|
| `GOOGL_prices.csv` | Pandas notebooks |
| `GOOGL_volume.csv` | Pandas notebooks |
| `IBM_stocks_data.xlsx` | Pandas notebooks |
| `cars_dataset.csv` | Pandas exercises |
| `india_census_2011.csv` | Pandas notebooks |
| `indian_startups.csv` | Pandas notebooks |
| `internet_data.json` | Pandas notebooks |
| `matches_data.csv` | Pandas notebooks |
| `shark_tank_india_pitches.csv` | Pandas notebooks |
| `shark_tank_india_sharks.csv` | Pandas notebooks |
| `swiggy.csv` | Pandas exercises |

---

## Key Concepts

**Why vectorization matters:** A Python loop over 1M rows takes ~1 second. The equivalent NumPy operation takes ~1ms. Understanding this forces better habits across the entire codebase.

**The Pandas mental model:** Think of a DataFrame as a dictionary of equally-lengthed Series sharing an index. Once this clicks, selection, grouping, and merging all become intuitive.

---

[Back to main README](../../README.md) | [Next: Module 02](../02-eda/README.md)
