:setvar DataRoot "C:\WorldCup2026Analytics\data"
USE WorldCup2026Analytics;
GO
BULK INSERT dim_team FROM '$(DataRoot)\dim_team.csv' WITH (FORMAT='CSV', FIRSTROW=2, FIELDQUOTE='"', CODEPAGE='65001', TABLOCK);
GO
BULK INSERT dim_tournament FROM '$(DataRoot)\dim_tournament.csv' WITH (FORMAT='CSV', FIRSTROW=2, FIELDQUOTE='"', CODEPAGE='65001', TABLOCK);
GO
BULK INSERT dim_location FROM '$(DataRoot)\dim_location.csv' WITH (FORMAT='CSV', FIRSTROW=2, FIELDQUOTE='"', CODEPAGE='65001', TABLOCK);
GO
BULK INSERT fact_historical_match FROM '$(DataRoot)\fact_historical_match.csv' WITH (FORMAT='CSV', FIRSTROW=2, FIELDQUOTE='"', CODEPAGE='65001', TABLOCK);
GO
BULK INSERT fact_elo_rating FROM '$(DataRoot)\fact_elo_rating.csv' WITH (FORMAT='CSV', FIRSTROW=2, FIELDQUOTE='"', CODEPAGE='65001', TABLOCK);
GO
BULK INSERT fact_team_modern_stats FROM '$(DataRoot)\fact_team_modern_stats.csv' WITH (FORMAT='CSV', FIRSTROW=2, FIELDQUOTE='"', CODEPAGE='65001', TABLOCK);
GO
BULK INSERT fact_power_ranking FROM '$(DataRoot)\fact_power_ranking.csv' WITH (FORMAT='CSV', FIRSTROW=2, FIELDQUOTE='"', CODEPAGE='65001', TABLOCK);
GO
BULK INSERT fact_match_score_probability FROM '$(DataRoot)\fact_match_score_probability.csv' WITH (FORMAT='CSV', FIRSTROW=2, FIELDQUOTE='"', CODEPAGE='65001', TABLOCK);
GO
