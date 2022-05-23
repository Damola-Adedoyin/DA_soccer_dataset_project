
WITH home_team as (
SELECT  match_api_id, team_api_id, team_long_name, team_short_name	
FROM  "Match" 
JOIN Team ON Match.home_team_api_id  = team.team_api_id
),
away_team as (
SELECT  match_api_id, team_api_id, team_long_name, team_short_name	
FROM  "Match" 
JOIN Team ON Match.away_team_api_id  = team.team_api_id
),

htm_attribute as(
SELECT match_api_id, team_api_id, ta.date as hdate,
	buildUpPlaySpeed as ht_bup_speed, buildUpPlayDribbling as ht_bup_dribbling, buildUpPlayPassing as ht_bup_passing,
	chanceCreationPassing as ht_cc_passing, chanceCreationCrossing as ht_cc_crossing, chanceCreationShooting as ht_cc_shooting, 
	defencePressure as ht_df_pressure, defenceAggression as ht_df_aggression, defenceTeamWidth as ht_df_teamwidth
FROM   Team_Attributes as ta
JOIN "Match" ON Match.home_team_api_id  = ta.team_api_id
WHERE ta.date LIKE "%2015%"
),
atm_attribute as(
SELECT match_api_id, team_api_id, ta.date as adate,
	buildUpPlaySpeed as at_bup_speed, buildUpPlayDribbling as at_bup_dribbling, buildUpPlayPassing as at_bup_passing,
	chanceCreationPassing as at_cc_passing, chanceCreationCrossing as at_cc_crossing, chanceCreationShooting as at_cc_shooting, 
	defencePressure as at_df_pressure, defenceAggression as at_df_aggression, defenceTeamWidth as at_df_teamwidth
FROM   Team_Attributes as ta
JOIN "Match" ON Match.away_team_api_id = ta.team_api_id
WHERE ta.date LIKE "%2015%"
)

SELECT  
	"date", stage
	,home_team_api_id, away_team_api_id
	,htm.team_long_name as home_teams, home_team_goal
	,away_team_goal, atm.team_long_name as away_teams,
	BWH, BWD, BWA, 
	ht_bup_speed, at_bup_speed,  ht_bup_dribbling, at_bup_dribbling, ht_bup_passing, at_bup_passing,
	 ht_cc_passing, at_cc_passing, ht_cc_crossing, at_cc_crossing, ht_cc_shooting, at_cc_shooting, 
	 ht_df_pressure, at_df_pressure, ht_df_aggression,  at_df_aggression, ht_df_teamwidth, at_df_teamwidth
	     
	      
	   
FROM  "Match" 
JOIN home_team as htm  ON Match.match_api_id  = htm.match_api_id  
JOIN away_team as atm ON  Match.match_api_id  = atm.match_api_id
JOIN htm_attribute  as htma ON  match.match_api_id  = htma.match_api_id 
JOIN atm_attribute  as atma ON  match.match_api_id  = atma.match_api_id 


WHERE  
	league_id = 1729 
	AND (season LIKE "%2015/2016%" OR season LIKE "%2014/2015%")
ORDER BY stage

/*===========================================================================================================================================
===========================================================================================================================================
===========================================================================================================================================*/
/*

select * from Country;

select * from League;

select * from "Match"  limit 5;
*/


 

/*

/*

select * from Player  limit 5;

select * from Player_Attributes  limit 5;

select * from Team  limit 5;
*/
/*select buildUpPlaySpeed, buildUpPlayDribbling, buildUpPlayPassing,
	chanceCreationPassing, chanceCreationCrossing, chanceCreationShooting, 
	defencePressure, defenceAggression, defenceTeamWidth,tat.date,team_long_name,country_id from Team_Attributes as tat
inner JOIN Team ON Match.home_team_api_id  = team.team_api_id
inner JOIN match ON Match.home_team_api_id  = team.team_api_id

WHERE (match.date LIKE "%2015%" OR match.date LIKE "%2016%") and
 match.country_id=1729
order by team_long_name  
limit 5;*/



