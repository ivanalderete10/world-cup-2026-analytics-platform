USE WorldCup2026Analytics;
GO
CREATE OR ALTER PROCEDURE sp_GetTeamHistory @TeamName NVARCHAR(120) AS
BEGIN
 SELECT * FROM vw_historical_match_results WHERE home_team=@TeamName OR away_team=@TeamName ORDER BY match_date DESC;
END;
GO
CREATE OR ALTER PROCEDURE sp_CompareTeams @TeamA NVARCHAR(120), @TeamB NVARCHAR(120) AS
BEGIN
 SELECT * FROM vw_historical_match_results WHERE (home_team=@TeamA AND away_team=@TeamB) OR (home_team=@TeamB AND away_team=@TeamA) ORDER BY match_date DESC;
END;
GO
CREATE OR ALTER PROCEDURE sp_GetMostLikelyScores @TeamA NVARCHAR(120), @TeamB NVARCHAR(120), @TopN INT=5 AS
BEGIN
 SELECT TOP (@TopN) a.team_name team_a,b.team_name team_b,s.score,s.score_probability,s.expected_goals_a,s.expected_goals_b,s.win_a_probability,s.draw_probability,s.win_b_probability
 FROM fact_match_score_probability s JOIN dim_team a ON a.team_id=s.team_a_id JOIN dim_team b ON b.team_id=s.team_b_id
 WHERE a.team_name=@TeamA AND b.team_name=@TeamB ORDER BY s.score_probability DESC;
END;
GO
