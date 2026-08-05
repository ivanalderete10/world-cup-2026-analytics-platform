# Solution architecture

```mermaid
flowchart LR
    A[Historical match CSVs] --> B[Python / Jupyter ETL]
    C[ELO ratings] --> B
    D[World Cup 2026 tournament files] --> B
    B --> E[Processed Excel / CSV datasets]
    E --> F[(SQL Server / SQLite)]
    F --> G[Analytical views and stored procedures]
    E --> H[Power BI semantic model]
    G --> H
    H --> I[Interactive dashboards and simulations]
```

## Layers

1. **Sources** — historical international matches, ELO ratings, tournament and venue data.
2. **Processing** — cleaning, standardization, feature engineering and prediction notebooks.
3. **Storage** — normalized SQL schema, analytical views, procedures and a ready-to-use SQLite file.
4. **Analytics** — Power BI reports, Power Score rankings and match/tournament simulations.
5. **Presentation** — dashboard screenshots, video and public documentation.
