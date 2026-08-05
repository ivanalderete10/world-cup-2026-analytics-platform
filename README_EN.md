<p align="center">
  <img src="assets/banner.png" alt="World Cup 2026 Analytics Platform banner" width="100%">
</p>

<p align="center">
  <img alt="Python" src="https://img.shields.io/badge/Python-3.x-3776AB?logo=python&logoColor=white">
  <img alt="SQL Server" src="https://img.shields.io/badge/SQL%20Server-Analytics-CC2927?logo=microsoftsqlserver&logoColor=white">
  <img alt="Power BI" src="https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi&logoColor=111">
  <img alt="Machine Learning" src="https://img.shields.io/badge/Machine%20Learning-Predictive%20Model-1769ff">
  <img alt="License" src="https://img.shields.io/badge/License-MIT-22c55e">
</p>

# World Cup 2026 Analytics Platform

> End-to-end sports analytics platform combining **Python, SQL Server, SQLite, Excel and Power BI** to analyze historical performance, build custom rankings and simulate 2026 World Cup matches and tournament scenarios.

[Versión en español](README.md)

## Executive overview

The project converts more than a century of international football results into a documented analytical solution. It covers exploration, cleaning, feature engineering, ELO and Power Score rankings, relational database design, SQL analysis, simulations and interactive dashboards.

| Metric | Value |
|---|---:|
| Historical matches | 49,472 |
| Time coverage | 1872–2026 |
| Normalized historical teams | 425 |
| ELO records | 6,678 |
| 2026 World Cup teams | 48 |
| Probable score scenarios | 81,216 |

## Business question

How can heterogeneous historical data be transformed into clear insights for comparing national teams, evaluating recent performance and estimating possible 2026 World Cup outcomes?

## Architecture

```mermaid
flowchart LR
    A[Historical results] --> D[Python / Jupyter ETL]
    B[ELO ratings] --> D
    C[2026 tournament data] --> D
    D --> E[Processed Excel and CSV]
    E --> F[(SQL Server / SQLite)]
    F --> G[Views and procedures]
    E --> H[Power BI model]
    G --> H
    H --> I[Dashboards and simulations]
```

## Main capabilities

- Historical and modern team-performance analysis.
- ELO and custom Power Score rankings.
- Normalized SQL schema and ready-to-use SQLite database.
- Analytical views, stored procedures and practice queries.
- Power BI report with ranking, match simulator and tournament simulation pages.
- Documentation, exercises and reproducible notebooks.

## Quick start

### SQLite

Open `data/sql/WorldCup2026Analytics.sqlite` using DB Browser for SQLite.

### SQL Server

Run the scripts in this order:

1. `sql/01_create_database_and_core_schema.sql`
2. `sql/02_bulk_load_core_data.sql`
3. `sql/03_views.sql`
4. `sql/04_stored_procedures.sql`

### Python

```bash
python -m venv .venv
# Windows
.venv\Scripts\activate
pip install -r requirements.txt
jupyter notebook
```

## Documentation

- [Architecture](docs/ARCHITECTURE.md)
- [Entity–relationship model](docs/ERD.md)
- [Data dictionary](docs/DATA_DICTIONARY.md)
- [SQL exercises](docs/EXERCISES.md)

## Author

**Iván Alderete** — Data & Operations Analyst  
Power BI · Excel · SQL · Python · Reporting · Process Improvement

- LinkedIn: `linkedin.com/in/ivan-augusto-alderete-620658252`
- Email: `ivanalderete10@gmail.com`
