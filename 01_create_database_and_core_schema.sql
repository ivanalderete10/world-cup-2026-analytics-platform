USE master;
IF DB_ID('WorldCup2026Analytics') IS NULL CREATE DATABASE WorldCup2026Analytics;
GO
USE WorldCup2026Analytics;
GO
IF OBJECT_ID('dim_team','U') IS NOT NULL DROP TABLE dim_team;
CREATE TABLE dim_team (
  [team_id] INT PRIMARY KEY,
  [team_name] NVARCHAR(120) NOT NULL UNIQUE,
  [team_display] NVARCHAR(160) NULL,
  [fifa_code] NVARCHAR(10) NULL,
  [iso2] NVARCHAR(10) NULL,
  [confederation] NVARCHAR(20) NULL,
  [group_code] NVARCHAR(5) NULL,
  [flag_url] NVARCHAR(500) NULL,
  [is_world_cup_2026] BIT NOT NULL
);
GO
IF OBJECT_ID('dim_tournament','U') IS NOT NULL DROP TABLE dim_tournament;
CREATE TABLE dim_tournament (
  [tournament_id] INT PRIMARY KEY,
  [tournament_name] NVARCHAR(160) NOT NULL UNIQUE
);
GO
IF OBJECT_ID('dim_location','U') IS NOT NULL DROP TABLE dim_location;
CREATE TABLE dim_location (
  [location_id] INT PRIMARY KEY,
  [city] NVARCHAR(160) NULL,
  [country] NVARCHAR(160) NULL
);
GO
IF OBJECT_ID('fact_historical_match','U') IS NOT NULL DROP TABLE fact_historical_match;
CREATE TABLE fact_historical_match (
  [match_id] INT PRIMARY KEY,
  [match_date] DATE NULL,
  [home_team_id] INT NOT NULL,
  [away_team_id] INT NOT NULL,
  [home_score] INT NULL,
  [away_score] INT NULL,
  [tournament_id] INT NOT NULL,
  [location_id] INT NOT NULL,
  [neutral] BIT NOT NULL
);
GO
IF OBJECT_ID('fact_elo_rating','U') IS NOT NULL DROP TABLE fact_elo_rating;
CREATE TABLE fact_elo_rating (
  [elo_id] INT PRIMARY KEY,
  [rating_date] DATE NULL,
  [team_id] INT NOT NULL,
  [rating] DECIMAL(10,2) NULL,
  [change] DECIMAL(10,2) NULL
);
GO
IF OBJECT_ID('fact_team_modern_stats','U') IS NOT NULL DROP TABLE fact_team_modern_stats;
CREATE TABLE fact_team_modern_stats (
  [team_stat_id] INT PRIMARY KEY,
  [team_id] INT NOT NULL,
  [model_version] NVARCHAR(40) NOT NULL,
  [matches_played] INT NULL,
  [total_points] DECIMAL(18,4) NULL,
  [weighted_points] DECIMAL(18,4) NULL,
  [goals_for] INT NULL,
  [goals_against] INT NULL,
  [points_per_match] DECIMAL(18,6) NULL,
  [weighted_points_per_match] DECIMAL(18,6) NULL,
  [goal_difference] INT NULL,
  [gd_per_match] DECIMAL(18,6) NULL,
  [power_score_v1] DECIMAL(18,8) NULL
);
GO
IF OBJECT_ID('fact_power_ranking','U') IS NOT NULL DROP TABLE fact_power_ranking;
CREATE TABLE fact_power_ranking (
  [ranking_id] INT PRIMARY KEY,
  [model_version] NVARCHAR(40) NOT NULL,
  [ranking_position] INT NOT NULL,
  [team_id] INT NOT NULL,
  [power_score] DECIMAL(18,8) NULL,
  [elo_rating] DECIMAL(18,4) NULL,
  [weighted_points_per_match] DECIMAL(18,6) NULL,
  [goal_difference_per_match] DECIMAL(18,6) NULL,
  [points_per_match] DECIMAL(18,6) NULL,
  [world_cup_points] DECIMAL(18,4) NULL,
  [world_cup_goal_difference] DECIMAL(18,4) NULL
);
GO
IF OBJECT_ID('fact_match_score_probability','U') IS NOT NULL DROP TABLE fact_match_score_probability;
CREATE TABLE fact_match_score_probability (
  [simulation_score_id] INT PRIMARY KEY,
  [team_a_id] INT NOT NULL,
  [team_b_id] INT NOT NULL,
  [score] NVARCHAR(20) NOT NULL,
  [goals_a] INT NOT NULL,
  [goals_b] INT NOT NULL,
  [score_probability] DECIMAL(18,10) NULL,
  [expected_goals_a] DECIMAL(18,10) NULL,
  [expected_goals_b] DECIMAL(18,10) NULL,
  [win_a_probability] DECIMAL(18,10) NULL,
  [draw_probability] DECIMAL(18,10) NULL,
  [win_b_probability] DECIMAL(18,10) NULL
);
GO
ALTER TABLE fact_historical_match ADD CONSTRAINT FK_match_home FOREIGN KEY(home_team_id) REFERENCES dim_team(team_id);
ALTER TABLE fact_historical_match ADD CONSTRAINT FK_match_away FOREIGN KEY(away_team_id) REFERENCES dim_team(team_id);
ALTER TABLE fact_historical_match ADD CONSTRAINT FK_match_tournament FOREIGN KEY(tournament_id) REFERENCES dim_tournament(tournament_id);
ALTER TABLE fact_historical_match ADD CONSTRAINT FK_match_location FOREIGN KEY(location_id) REFERENCES dim_location(location_id);
ALTER TABLE fact_elo_rating ADD CONSTRAINT FK_elo_team FOREIGN KEY(team_id) REFERENCES dim_team(team_id);
ALTER TABLE fact_team_modern_stats ADD CONSTRAINT FK_stats_team FOREIGN KEY(team_id) REFERENCES dim_team(team_id);
ALTER TABLE fact_power_ranking ADD CONSTRAINT FK_rank_team FOREIGN KEY(team_id) REFERENCES dim_team(team_id);
ALTER TABLE fact_match_score_probability ADD CONSTRAINT FK_sim_a FOREIGN KEY(team_a_id) REFERENCES dim_team(team_id);
ALTER TABLE fact_match_score_probability ADD CONSTRAINT FK_sim_b FOREIGN KEY(team_b_id) REFERENCES dim_team(team_id);
CREATE INDEX IX_match_date ON fact_historical_match(match_date);
CREATE INDEX IX_match_home ON fact_historical_match(home_team_id);
CREATE INDEX IX_match_away ON fact_historical_match(away_team_id);
CREATE INDEX IX_elo_team_date ON fact_elo_rating(team_id,rating_date);
CREATE INDEX IX_rank_version_pos ON fact_power_ranking(model_version,ranking_position);
CREATE INDEX IX_sim_pair ON fact_match_score_probability(team_a_id,team_b_id);
GO
