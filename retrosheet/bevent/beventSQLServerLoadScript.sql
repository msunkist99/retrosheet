--- Use this script to load the play_bevent table in the retrosheet database.


use retrosheet;
GO

drop table Play_Bevent;

create table Play_Bevent
(
game_id				varchar(50)
,visiting_team_id		varchar(50)
,inning				int
,game_team_code		int
,outs				int
,count_balls			int
,count_strikes			int	
,pitch_sequence			varchar(50)
,visiting_score			int
,home_score			int
,batter_player_id		varchar(50)
,batter_bats			char(1)
,resp_batter_player_id		varchar(50)
,resp_batter_bats		char(1)
,pitcher_player_id		varchar(50)
,pitcher_throws			char(1)
,resp_pitcher_player_id		varchar(50)
,resp_pitcher_throws		char(1)
,catcher_player_id		varchar(50)
,first_base_player_id		varchar(50)
,second_base_player_id		varchar(50)
,third_base_player_id		varchar(50)
,shortstop_player_id		varchar(50)
,left_field_player_id		varchar(50)
,center_field_player_id		varchar(50)
,right_field_player_id		varchar(50)
,first_runner_player_id		varchar(50)
,second_runner_player_id	varchar(50)	
,third_runner_player_id		varchar(50)
,event_text			varchar(50)
,leadoff_flag			char(1)
,pinchhit_flag			char(1)
,batter_defensive_position 	int
,batter_lineup_position		int
,event_type			varchar(50)
,batter_event_flag		char(1)
,ab_flag			char(1)
,hit_value			int
,sac_hit_flag			char(1)
,sac_fly_flag			char(1)
,outs_on_play			int
,double_play_flag		char(1)
,triple_play_flag		char(1)
,RBI_on_play_flag		char(1)
,wild_pitch_flag		char(1)
,passed_ball_flag		char(1)
,fielded_by			int
,batted_ball_type		varchar(50)
,bunt_flag			char(1)
,foul_flag			char(1)
,hit_location			varchar(50)
,num_errors			int
,first_error_position		int
,first_error_type		char(1)
,second_error_position		int
,second_error_type		char(1)
,third_error_position		int
,third_error_type		char(1)
,batter_dest			int
,first_runner_dest 		int
,second_runner_dest 		int
,third_runner_dest 		int
,play_on_batter			varchar(50)
,play_on_first_runner		varchar(50)
,play_on_second_runner		varchar(50)
,play_on_third_runner		varchar(50)
,stolen_base_on_first_flag	char(1)
,stolen_base_on_second_flag	char(1)
,stolen_base_on_third_flag	char(1)
,caught_stealing_first_flag	char(1)
,caught_stealing_second_flag 	char(1)
,caught_stealing_third_flag	char(1)
,pick_off_first_flag		char(1)
,pick_off_second_flag		char(1)
,pick_off_third_flag		char(1)
,resp_pitcher_first_player_id	varchar(50)
,resp_pitcher_second_player_id	varchar(50)
,resp_pitcher_third_player_id	varchar(50)
,new_game_flag			char(1)
,end_game_flag			char(1)
,pinch_runner_first		char(1)
,pinch_runner_second		char(1)
,pinch_runner_third		char(1)
,runner_first_removed_pinch_player_id	varchar(50)
,runner_second_removed_pinch_player_id	varchar(50)
,runner_third_removed_pinch_player_id	varchar(50)
,batter_removed_pinch_player_id		varchar(50)
,batter_removed_position_pinch	int
,first_put_out_position		int
,second_put_out_position	int
,third_put_out_position		int
,first_assist_position		int
,second_assist_position		int
,third_assist_position		int
,fourth_assist_position		int
,fifth_assist_position		int
,event_num			int
);

bulk insert play_bevent
  from 'C:\users\msunk\documents\Visual Studio 2017\retrosheet\bevent\2015 regular Season\2015RegularSeason.txt'
  with ( firstrow=1, fieldterminator='|');

bulk insert play_bevent
  from 'C:\users\msunk\documents\Visual Studio 2017\retrosheet\bevent\2015 All Star\2015AS.txt'
  with (firstrow=1, fieldterminator='|');

bulk insert play_bevent
  from 'C:\users\msunk\documents\Visual Studio 2017\retrosheet\bevent\2015 Post Season\2015ps.txt'
  with (firstrow=1, fieldterminator='|');

bulk insert play_bevent
  from 'C:\users\msunk\documents\Visual Studio 2017\retrosheet\bevent\2016 regular Season\2016RegularSeason.txt'
  with (firstrow=1, fieldterminator='|');

bulk insert play_bevent
  from 'C:\users\msunk\documents\Visual Studio 2017\retrosheet\bevent\2016 All Star\2016AS.txt'
  with (firstrow=1, fieldterminator='|');

bulk insert play_bevent
  from 'C:\users\msunk\documents\Visual Studio 2017\retrosheet\bevent\2016 Post Season\2016ps.txt'
  with (firstrow=1, fieldterminator='|');


bulk insert play_bevent
  from 'C:\users\msunk\documents\Visual Studio 2017\retrosheet\bevent\1982 regular Season\1982RegularSeason.txt'
  with ( firstrow=1, fieldterminator='|');

bulk insert play_bevent
  from 'C:\users\msunk\documents\Visual Studio 2017\retrosheet\bevent\1982 All Star\1982AS.txt'
  with (firstrow=1, fieldterminator='|');

bulk insert play_bevent
  from 'C:\users\msunk\documents\Visual Studio 2017\retrosheet\bevent\1982 Post Season\1982ps.txt'
  with (firstrow=1, fieldterminator='|');

ALTER TABLE play_bevent
ADD record_id uniqueidentifier DEFAULT(NEWID());


------- these two steps must be run after the table is loaded
------- and the record_id column has been added to the table
UPDATE play_bevent
SET record_id = NEWID()
WHERE record_id IS NULL;

CREATE INDEX ix_play_bevent ON play_bevent (game_id, event_num); 