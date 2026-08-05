# Data Dictionary

## dim_team
Rows: 425

| Column | Type |
|---|---|
| team_id | int64 |
| team_name | object |
| team_display | object |
| fifa_code | object |
| iso2 | object |
| confederation | object |
| group_code | object |
| flag_url | object |
| is_world_cup_2026 | int64 |

## dim_tournament
Rows: 200

| Column | Type |
|---|---|
| tournament_id | int64 |
| tournament_name | object |

## dim_location
Rows: 2,214

| Column | Type |
|---|---|
| location_id | int64 |
| city | object |
| country | object |

## fact_historical_match
Rows: 49,472

| Column | Type |
|---|---|
| match_id | int64 |
| match_date | object |
| home_team_id | int64 |
| away_team_id | int64 |
| home_score | float64 |
| away_score | float64 |
| tournament_id | int64 |
| location_id | int64 |
| neutral | int64 |

## fact_elo_rating
Rows: 6,678

| Column | Type |
|---|---|
| elo_id | int64 |
| rating_date | object |
| team_id | int64 |
| rating | float64 |
| change | int64 |

## fact_team_modern_stats
Rows: 261

| Column | Type |
|---|---|
| team_stat_id | int64 |
| team_id | int64 |
| model_version | object |
| matches_played | int64 |
| total_points | int64 |
| weighted_points | int64 |
| goals_for | int64 |
| goals_against | int64 |
| points_per_match | float64 |
| weighted_points_per_match | float64 |
| goal_difference | int64 |
| gd_per_match | float64 |
| power_score_v1 | float64 |

## fact_power_ranking
Rows: 241

| Column | Type |
|---|---|
| ranking_id | int64 |
| model_version | object |
| ranking_position | int64 |
| team_id | int64 |
| power_score | float64 |
| elo_rating | int64 |
| weighted_points_per_match | float64 |
| goal_difference_per_match | float64 |
| points_per_match | float64 |
| world_cup_points | float64 |
| world_cup_goal_difference | float64 |

## dim_world_cup_team
Rows: 48

| Column | Type |
|---|---|
| world_cup_team_id | int64 |
| team_id | float64 |
| source_team_id | int64 |
| source_name | object |
| name_fa | object |
| fifa_code | object |
| iso2 | object |
| group_code | object |
| source_flag_url | object |

## dim_stadium
Rows: 16

| Column | Type |
|---|---|
| stadium_id | int64 |
| source_stadium_id | int64 |
| stadium_name | object |
| fifa_name | object |
| city | object |
| country | object |
| capacity | int64 |

## fact_world_cup_match
Rows: 104

| Column | Type |
|---|---|
| tournament_match_key | int64 |
| match_id | int64 |
| match_date | object |
| round_group | object |
| round_type | object |
| matchday | int64 |
| finished | bool |
| time_elapsed | object |
| team_a_id | float64 |
| team_b_id | float64 |
| team_a | object |
| team_b | object |
| goals_a | int64 |
| goals_b | int64 |

## fact_group_standing
Rows: 48

| Column | Type |
|---|---|
| standing_id | int64 |
| group | object |
| rank | int64 |
| team_id | int64 |
| team | object |
| fifa_code | object |
| mp | int64 |
| w | int64 |
| d | int64 |
| l | int64 |
| pts | int64 |
| gf | int64 |
| ga | int64 |
| gd | int64 |
| team_id_normalized | float64 |

## fact_best_third_place
Rows: 12

| Column | Type |
|---|---|
| best_third_id | int64 |
| third_rank | int64 |
| group | object |
| team_id | int64 |
| team | object |
| pts | int64 |
| gf | int64 |
| ga | int64 |
| gd | int64 |
| qualified_best_8 | bool |
| team_id_normalized | float64 |

## fact_match_score_probability
Rows: 81,216

| Column | Type |
|---|---|
| simulation_score_id | int64 |
| team_a_id | int64 |
| team_b_id | int64 |
| score | object |
| goals_a | int64 |
| goals_b | int64 |
| score_probability | float64 |
| expected_goals_a | float64 |
| expected_goals_b | float64 |
| win_a_probability | float64 |
| draw_probability | float64 |
| win_b_probability | float64 |

## fact_tournament_probability
Rows: 48

| Column | Type |
|---|---|
| tournament_probability_id | int64 |
| team_id | int64 |
| ranking | int64 |
| power_score_live | float64 |
| rating | int64 |
| round_32_probability | int64 |
| round_16_probability | float64 |
| quarterfinal_probability | float64 |
| semifinal_probability | float64 |
| final_probability | float64 |
| champion_probability | float64 |

## fact_projected_bracket
Rows: 31

| Column | Type |
|---|---|
| projected_match_id | int64 |
| match_id | int64 |
| round_type | object |
| date | object |
| team_a | object |
| team_b | object |
| team_a_display | object |
| team_b_display | object |
| projected_winner | object |
| projected_winner_display | object |
| winner_probability | float64 |
| decision_rule | object |
| next_match_id | float64 |
| bracket_side | object |
| team_a_id | int64 |
| team_b_id | int64 |
| projected_winner_id | int64 |

## fact_confederation_probability
Rows: 6

| Column | Type |
|---|---|
| confederation_probability_id | int64 |
| confederation | object |
| champion_probability | float64 |

## model_decision_note
Rows: 3

| Column | Type |
|---|---|
| note_id | int64 |
| rule | object |
| description | object |
