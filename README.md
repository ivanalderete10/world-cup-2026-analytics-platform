<p align="center">
  <img src="banner.png" alt="World Cup 2026 Analytics Platform banner" width="100%">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white">
  <img src="https://img.shields.io/badge/SQL_Server-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white">
  <img src="https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black">
  <img src="https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white">
  <img src="https://img.shields.io/badge/Machine_Learning-0879E6?style=for-the-badge">
</p>

<p align="center">
  <strong>End-to-end analytics platform for international football data, predictive modeling and tournament simulation.</strong>
</p>

---

## Project overview

This portfolio project transforms historical international football data into a complete analytics solution. It combines Python data preparation, relational modeling in SQL, predictive metrics, tournament simulations and interactive Power BI dashboards.

The project was designed to demonstrate the full lifecycle of a data product:

- data collection and validation;
- cleaning and feature engineering;
- relational database modeling;
- analytical views and reusable SQL procedures;
- ELO and Power Score modeling;
- Monte Carlo tournament simulation;
- business-oriented visualization in Power BI.

## Project scale

| Metric | Value |
|---|---:|
| Historical international matches | **49,472** |
| Historical coverage | **1872–2026** |
| ELO rating records | **6,678** |
| World Cup 2026 teams | **48** |
| Match-score scenarios | **81,216** |
| Main dashboard pages | **5** |

## Solution architecture

<p align="center">
  <img src="architecture.svg" alt="Solution architecture" width="100%">
</p>

## Repository structure

```text
world-cup-2026-analytics-platform/
├── data/
│   ├── raw/                 # Historical source datasets
│   ├── processed/           # Excel outputs used for analysis
│   └── sql/                 # Normalized CSV tables and SQLite database
├── notebooks/               # Exploration, feature engineering and prediction
├── sql/                     # SQL Server schema, bulk load, views and procedures
├── powerbi/                 # Power BI project files
├── docs/                    # ERD, data dictionary, exercises and screenshots
├── examples/                # Practice SQL queries
├── README.md
├── README_EN.md
├── requirements.txt
└── LICENSE
```

## Analytics workflow

### 1. Data preparation

Python and Pandas are used to clean historical match data, standardize team names and generate modern performance indicators.

### 2. Feature engineering

The model combines:

- weighted points per match;
- goal difference per match;
- recent-form metrics;
- ELO ratings;
- confederation and tournament context.

### 3. Predictive layer

A custom **Power Score** ranks national teams. Match probabilities and expected scores are estimated before running Monte Carlo simulations of the full tournament.

### 4. SQL analytics layer

The repository includes:

- normalized dimension and fact tables;
- primary and foreign keys;
- analytical views;
- stored procedures;
- reusable practice queries;
- a ready-to-use SQLite database.

### 5. Power BI dashboard

The dashboard contains:

1. Executive summary  
2. Ranking and team analysis  
3. Match simulator  
4. Tournament simulation  
5. Evolution and trends  

## Dashboard preview

<p align="center">
  <img src="pagina%201.png" alt="Executive dashboard" width="49%">
  <img src="pagina%202.png" alt="Ranking and analysis" width="49%">
</p>

<p align="center">
  <img src="pagina%203.png" alt="Match simulator" width="49%">
  <img src="pagina%204.png" alt="Tournament simulation" width="49%">
</p>

> If the screenshots are stored inside `docs/screenshots`, update the paths above to `docs/screenshots/pagina%201.png`, etc.

## SQL components

| File | Purpose |
|---|---|
| `01_create_database_and_core_schema.sql` | Creates the database and relational schema |
| `02_bulk_load_core_data.sql` | Loads the normalized CSV datasets |
| `03_views.sql` | Creates analytical views |
| `04_stored_procedures.sql` | Creates reusable stored procedures |
| `practice_queries.sql` | Provides solved SQL exercises |

## Key analytical outputs

- international team performance rankings;
- ELO and Power Score comparisons;
- expected goals and match probabilities;
- most likely scorelines;
- group-stage and knockout-stage projections;
- champion probabilities by team and confederation.

## How to use the project

### Quick option: SQLite

Open:

```text
data/sql/WorldCup2026Analytics.sqlite
```

with DB Browser for SQLite or another compatible client.

### SQL Server option

Run the scripts in this order:

```text
sql/01_create_database_and_core_schema.sql
sql/02_bulk_load_core_data.sql
sql/03_views.sql
sql/04_stored_procedures.sql
```

### Python environment

```bash
pip install -r requirements.txt
```

Then open the notebooks in numerical order.

## Skills demonstrated

`Python` · `Pandas` · `SQL Server` · `SQLite` · `Power BI` · `Power Query` · `DAX` · `Data Modeling` · `Data Visualization` · `Predictive Analytics` · `Monte Carlo Simulation` · `Technical Documentation`

## Lessons learned

This project strengthened my ability to connect technical analysis with business communication: preparing reliable data, designing a scalable model and converting complex results into clear, decision-oriented dashboards.

## Roadmap

- automate live-data refreshes;
- improve model validation and backtesting;
- publish an interactive web version;
- add reproducible deployment scripts;
- expand the SQL exercise collection.

## Author

**Iván Alderete**  
Data & Operations Analyst · Mendoza, Argentina

- LinkedIn: [ivan-augusto-alderete-620658252](https://www.linkedin.com/in/ivan-augusto-alderete-620658252)
- Email: [ivanalderete10@gmail.com](mailto:ivanalderete10@gmail.com)

---

<p align="center">
  <strong>Data • Insights • Impact</strong>
</p>
