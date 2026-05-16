# Module 01 — NumPy & Pandas

> **Status:** ✅ Complete

The foundation of all data science work in Python. This module builds deep intuition for array-based computation and tabular data manipulation — skills used in every subsequent module.

---

## Learning Objectives

By the end of this module you will be able to:

- Create and manipulate N-dimensional NumPy arrays with confidence
- Understand broadcasting rules and write vectorized code (no loops)
- Load, clean, reshape, merge, and aggregate data with Pandas
- Choose the right data structure for the right task
- Write efficient, readable data manipulation code that scales

---

## Topics Covered

### NumPy
| Notebook | Topics |
|----------|--------|
| `01_arrays_and_dtypes.ipynb` | Array creation, shapes, dtypes, memory layout |
| `02_indexing_slicing.ipynb` | Basic indexing, fancy indexing, boolean masks |
| `03_broadcasting.ipynb` | Broadcasting rules, common patterns, pitfalls |
| `04_vectorized_operations.ipynb` | ufuncs, aggregations, axis operations |
| `05_linear_algebra.ipynb` | dot products, matrix operations, `np.linalg` |

### Pandas
| Notebook | Topics |
|----------|--------|
| `06_series_and_dataframes.ipynb` | Series, DataFrame, index, dtypes |
| `07_loading_and_inspecting.ipynb` | `read_csv`, `read_json`, `info`, `describe`, `head` |
| `08_indexing_and_selection.ipynb` | `loc`, `iloc`, boolean filtering, `query` |
| `09_data_cleaning.ipynb` | Missing values, duplicates, type casting, string ops |
| `10_groupby_and_aggregation.ipynb` | `groupby`, `agg`, `transform`, `apply` |
| `11_merging_and_reshaping.ipynb` | `merge`, `concat`, `pivot_table`, `melt`, `stack` |
| `12_performance_tips.ipynb` | Vectorization vs apply, categorical dtype, chunking |

---

## Exercises

Exercises are in `exercises/` — attempt them before looking at `solutions/`.

| Exercise | Focus |
|----------|-------|
| `ex01_array_manipulation.py` | Array creation, reshaping, broadcasting |
| `ex02_pandas_wrangling.py` | Load, clean, and transform a real dataset |
| `ex03_combined_challenge.py` | Mixed NumPy + Pandas pipeline |

---

## Key Concepts

**Why vectorization matters:** A Python loop over 1M rows takes ~1 second. The equivalent NumPy operation takes ~1ms. Understanding this forces better habits across the entire codebase.

**The Pandas mental model:** Think of a DataFrame as a dictionary of equally-lengthed Series sharing an index. Once this clicks, selection, grouping, and merging all become intuitive.

---

## Resources

- [NumPy User Guide](https://numpy.org/doc/stable/user/)
- [Pandas User Guide](https://pandas.pydata.org/docs/user_guide/)
- [NumPy Illustrated (great visual reference)](https://betterprogramming.pub/numpy-illustrated-the-visual-guide-to-numpy-3b1d4976de1d)

---

[← Back to main README](../../README.md) | [Next: Module 02 — EDA →](../02-eda/README.md)
