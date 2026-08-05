USE WorldCup2026Analytics;
GO
CREATE OR ALTER VIEW vw_historical_match_results AS
SELECT m.match_id,m.match_date,h.team_name AS home_team,a.team_name AS away_team,m.home_score,m.away_score,t.tournament_name,l.city,l.country,m.neutral
FROM fact_historical_match m JOIN dim_team h ON h.team_id=m.home_team_id JOIN dim_team a ON a.team_id=m.away_team_id JOIN dim_tournament t ON t.tournament_id=m.tournament_id JOIN dim_location l ON l.location_id=m.location_id;
GO
CREATE OR ALTER VIEW vw_live_power_ranking AS
SELECT r.ranking_position,t.team_name,t.confederation,r.power_score,r.elo_rating,r.weighted_points_per_match,r.goal_difference_per_match,r.world_cup_points,r.world_cup_goal_difference
FROM fact_power_ranking r JOIN dim_team t ON t.team_id=r.team_id WHERE r.model_version='live_2026';
GO
CREATE OR ALTER VIEW vw_team_historical_summary AS
WITH games AS (
SELECT home_team_id team_id,home_score gf,away_score ga,CASE WHEN home_score>away_score THEN 1 ELSE 0 END win,CASE WHEN home_score=away_score THEN 1 ELSE 0 END draw FROM fact_historical_match
UNION ALL
SELECT away_team_id,away_score,home_score,CASE WHEN away_score>home_score THEN 1 ELSE 0 END,CASE WHEN home_score=away_score THEN 1 ELSE 0 END FROM fact_historical_match)
SELECT t.team_name,COUNT(*) matches_played,SUM(win) wins,SUM(draw) draws,COUNT(*)-SUM(win)-SUM(draw) losses,SUM(gf) goals_for,SUM(ga) goals_against,SUM(gf-ga) goal_difference
FROM games g JOIN dim_team t ON t.team_id=g.team_id GROUP BY t.team_name;
GO
