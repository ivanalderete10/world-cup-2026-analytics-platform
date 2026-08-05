<p align="center">
  <img src="assets/banner.png" alt="World Cup 2026 Analytics Platform banner" width="100%">
</p>

<p align="center">
  <img alt="Python" src="https://img.shields.io/badge/Python-3.x-3776AB?logo=python&logoColor=white">
  <img alt="SQL Server" src="https://img.shields.io/badge/SQL%20Server-Analytics-CC2927?logo=microsoftsqlserver&logoColor=white">
  <img alt="Power BI" src="https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi&logoColor=111">
  <img alt="Pandas" src="https://img.shields.io/badge/Pandas-Data%20Processing-150458?logo=pandas&logoColor=white">
  <img alt="Machine Learning" src="https://img.shields.io/badge/Machine%20Learning-Predictive%20Model-1769ff">
  <img alt="License" src="https://img.shields.io/badge/License-MIT-22c55e">
</p>

# World Cup 2026 Analytics Platform

> Plataforma integral de analítica deportiva que combina **Python, SQL Server, SQLite, Excel y Power BI** para analizar rendimiento histórico, construir rankings propios y simular partidos y escenarios del Mundial 2026.

[English version](README_EN.md)

## Resumen ejecutivo

Este proyecto transforma más de un siglo de resultados internacionales en una solución analítica de punta a punta. El flujo incluye exploración, limpieza, feature engineering, rankings ELO y Power Score, modelado relacional, consultas SQL, simulaciones y dashboards interactivos.

### Cifras principales

| Métrica | Valor |
|---|---:|
| Partidos históricos | 49.472 |
| Cobertura temporal | 1872–2026 |
| Selecciones históricas normalizadas | 425 |
| Registros ELO | 6.678 |
| Selecciones Mundial 2026 | 48 |
| Escenarios de resultados probables | 81.216 |

## Problema de negocio

¿Cómo convertir datos históricos heterogéneos en información clara para comparar selecciones, evaluar rendimiento reciente y estimar resultados posibles del Mundial 2026?

La solución debía:

- Unificar nombres y entidades de selecciones.
- Integrar resultados históricos, ELO y métricas modernas.
- Construir indicadores comparables y explicables.
- Permitir análisis SQL y conexión con Power BI.
- Presentar escenarios predictivos sin afirmar certezas deportivas.

## Arquitectura

```mermaid
flowchart LR
    A[Resultados históricos] --> D[Python / Jupyter ETL]
    B[ELO ratings] --> D
    C[Datos Mundial 2026] --> D
    D --> E[Excel y CSV procesados]
    E --> F[(SQL Server / SQLite)]
    F --> G[Vistas y procedimientos]
    E --> H[Modelo Power BI]
    G --> H
    H --> I[Dashboards y simulaciones]
```

Más detalle: [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md)

## Componentes del proyecto

### Python y notebooks

- Exploración y validación de datos.
- Métricas modernas de rendimiento.
- Feature engineering.
- Power Score y rankings.
- Conexión con datos actualizables.
- Simulación de partidos y torneo.

### SQL

- Esquema relacional con claves y restricciones.
- Carga de datasets analíticos.
- Vistas orientadas a reporting.
- Stored procedures para consultas recurrentes.
- Base SQLite lista para explorar sin servidor.
- Consultas y ejercicios para aprendizaje.

### Power BI

- Resumen ejecutivo.
- Ranking y análisis de selecciones.
- Simulador de partidos.
- Simulación del torneo.
- Evolución y tendencias.

## Capturas

<p align="center">
  <img src="docs/screenshots/pagina%201.png" width="47%" alt="Resumen ejecutivo">
  <img src="docs/screenshots/pagina%202.png" width="47%" alt="Ranking y análisis">
</p>
<p align="center">
  <img src="docs/screenshots/pagina%203.png" width="47%" alt="Simulador de partidos">
  <img src="docs/screenshots/pagina%204.png" width="47%" alt="Simulación del torneo">
</p>

## Estructura

```text
World-Cup-2026-Analytics-Platform/
├── assets/                 # Banner y logo originales
├── data/
│   ├── raw/                # Resultados históricos y ELO
│   ├── processed/          # Datasets preparados para análisis
│   └── sql/                # CSV normalizados y SQLite
├── docs/                   # Arquitectura, ERD, diccionario y ejercicios
│   └── screenshots/        # Capturas del dashboard
├── examples/               # Consultas SQL resueltas
├── notebooks/              # Flujo analítico en Jupyter
├── powerbi/                # Archivos PBIX
├── sql/                    # Esquema, carga, vistas y procedimientos
├── video/                  # Demostración del dashboard
├── README.md
├── README_EN.md
├── requirements.txt
└── LICENSE
```

## Uso rápido

### Opción A — SQLite

Abrí `data/sql/WorldCup2026Analytics.sqlite` con DB Browser for SQLite o una extensión SQL compatible.

### Opción B — SQL Server

Ejecutá en orden:

1. `sql/01_create_database_and_core_schema.sql`
2. `sql/02_bulk_load_core_data.sql`
3. `sql/03_views.sql`
4. `sql/04_stored_procedures.sql`

> La carga masiva puede requerir ajustar las rutas de archivos según tu equipo.

### Opción C — Python

```bash
python -m venv .venv
# Windows
.venv\Scripts\activate
pip install -r requirements.txt
jupyter notebook
```

## Documentación

- [Arquitectura](docs/ARCHITECTURE.md)
- [Modelo entidad–relación](docs/ERD.md)
- [Diccionario de datos](docs/DATA_DICTIONARY.md)
- [Ejercicios SQL](docs/EXERCISES.md)
- [Consultas de práctica](examples/practice_queries.sql)

## Alcance y limitaciones

- Es un proyecto educativo y de portfolio.
- Los resultados predictivos son escenarios analíticos, no pronósticos garantizados.
- La identidad visual es original y no pretende representar ni estar afiliada a FIFA.
- Antes de reutilizar datasets externos, verificá sus términos y licencias originales.

## Autor

**Iván Alderete** — Data & Operations Analyst  
Power BI · Excel · SQL · Python · Reporting · Process Improvement

- LinkedIn: `linkedin.com/in/ivan-augusto-alderete-620658252`
- Email: `ivanalderete10@gmail.com`
