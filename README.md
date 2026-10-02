# Spark 101 — Code Examples

Hands-on notebooks for the **Spark 101** course. Every lecture's live demo lives here as a Databricks-ready `.ipynb`.

## Run these in Databricks

1. In your Databricks workspace, open **Workspace → Repos** (or **Git folders**).
2. Click **Add → Add repo** and paste this repository's HTTPS URL.
3. Open any notebook and attach it to a running cluster.

All demos are **self-contained** — they generate their own sample data (temp files) or use built-in Databricks sample datasets. No uploads required, runs on Databricks Free (**serverless** compute).

> **One exception — `module_4_rdds/13_rdd_operations.ipynb`.** It teaches the RDD API (`sc.parallelize`, `map`, `reduceByKey`, ...), which serverless compute blocks. Run that one notebook on a **Dedicated (classic) access-mode** cluster. Every other notebook runs on serverless as-is.

> One exception: `module_1_why_spark/03_what_is_spark.ipynb` can use Shakespeare text. The notebook's first cell downloads it to `/tmp`; `download_shakespeare.sh` is provided if you'd rather fetch it manually.

## Layout

One folder per module, one notebook per lecture, numbered to match the course order.

| Module | Notebooks |
|---|---|
| `module_1_why_spark` | 01 Big Data Problem · 03 What Is Spark |
| `module_2_environment` | 05 First Spark Program |
| `module_3_how_spark_works` | 07 Partitions · 08 Transformations vs Actions · 09 Lazy Evaluation · 10 DAGs/Jobs/Stages/Tasks |
| `module_4_rdds` | 13 RDD Operations |
| `module_5_dataframes_and_sql` | 14 DataFrames & Schema · 15 Reading Data · 16 Core Transformations · 17 Spark SQL · 18 UDFs |
| `module_6_writing_data` | 19 Writing Data · 20 Parquet vs CSV |
| `module_7_performance` | 21 Partitioning Deep Dive · 22 The Shuffle · 23 Caching & Persistence · 24 Broadcast Joins · 25 Beginner Mistakes |
| `module_8_final_project` | 26 Final Project |

Conceptual lectures (Hadoop, Driver/Executors, Cluster Managers, What Are RDDs, EMR walkthrough) have no demo by design, so their numbers are skipped here.
