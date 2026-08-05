-- 1. Top 10 live power ranking
SELECT TOP 10 * FROM vw_live_power_ranking ORDER BY ranking_position;

-- 2. Teams with most historical wins
SELECT TOP 20 * FROM vw_team_historical_summary ORDER BY wins DESC;

-- 3. Latest ELO rating for each team
WITH x AS (SELECT e.*,ROW_NUMBER() OVER(PARTITION BY team_id ORDER BY rating_date DESC,elo_id DESC) rn FROM fact_elo_rating e)
SELECT t.team_name,x.rating,x.rating_date FROM x JOIN dim_team t ON t.team_id=x.team_id WHERE rn=1 ORDER BY rating DESC;

-- 4. Most frequent tournament types
SELECT TOP 20 t.tournament_name,COUNT(*) matches FROM fact_historical_match m JOIN dim_tournament t ON t.tournament_id=m.tournament_id GROUP BY t.tournament_name ORDER BY matches DESC;

-- 5. Most likely Argentina vs Spain scores
EXEC sp_GetMostLikelyScores 'Argentina','Spain',10;
