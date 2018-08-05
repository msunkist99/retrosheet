--- Use this script to load the play_bevent table in the retrosheet database.

--- before running this script, get the record count for the tt1am.plan_cash_flow.txt file
--- and update the lastrow value with the record count
---  findstr /R /N "|" t1am.plan_cash_flow.txt_140702_F0085517 | find /C ":"

use retrosheet;
GO

create table Play_Bevent
(
 game_id			varchar(50)
,visiting_team_id		varchar(50)
,inning				varchar(50)
,batting_team_id		varchar(50)
,outs				varchar(50)
,count_balls			varchar(50)
,count_strikes			varchar(50)
,visiting_score			varchar(50)
,home_score			varchar(50)
,batter_player_id		varchar(50)
,batter_bats			varchar(50)
,pitcher_player_id		varchar(50)
,pitcher_throws			varchar(50)
,first_runner_player_id		varchar(50)
,second_runner_player_id	varchar(50)	
,third_runner_player_id		varchar(50)
,event_text			varchar(50)
,leadoff_flag			varchar(50)
,pinchhit_flag			varchar(50)
,defensive_position 		varchar(50)
,lineup_position		varchar(50)
,event_type			varchar(50)
,batter_event_flag		varchar(50)
,ab_flag			varchar(50)
,hit_value			varchar(50)
,sh_flag			varchar(50)
,sf_flag			varchar(50)
,outs_on_play			varchar(50)
,RBI_on_play			varchar(50)
,wild_pitch_flag		varchar(50)
,passed_ball_flag		varchar(50)
,fielded_by			varchar(50)
,hit_location			varchar(50)
,num_errors			varchar(50)
,batter_dest			varchar(50)
,first_runner_dest 		varchar(50)
,second_runner_dest 		varchar(50)
,third_runner_dest 		varchar(50)
,event_num			int
);

bulk insert play_bevent
  from 'C:\users\mmr\documents\retrosheet\bevent\2015 regular Season\2015RegularSeason.txt'
  with (firstrow=1, fieldterminator='|');

bulk insert play_bevent
  from 'C:\users\mmr\documents\retrosheet\bevent\2015 All Star\2015AS.txt'
  with (firstrow=1, fieldterminator='|');

bulk insert play_bevent
  from 'C:\users\mmr\documents\retrosheet\bevent\2015 Post Season\2015ps.txt'
  with (firstrow=1, fieldterminator='|');

bulk insert play_bevent
  from 'C:\users\mmr\documents\retrosheet\bevent\2016 regular Season\2016RegularSeason.txt'
  with (firstrow=1, fieldterminator='|');

bulk insert play_bevent
  from 'C:\users\mmr\documents\retrosheet\bevent\2016 All Star\2016AS.txt'
  with (firstrow=1, fieldterminator='|');

bulk insert play_bevent
  from 'C:\users\mmr\documents\retrosheet\bevent\2016 Post Season\2016ps.txt'
  with (firstrow=1, fieldterminator='|');

ALTER TABLE play_bevent
ADD record_id uniqueidentifier DEFAULT(NEWID());

UPDATE play_bevent
SET record_id = NEWID()
WHERE record_id IS NULL;

CREATE INDEX ix_play_bevent ON play_bevent (game_id, event_num); 