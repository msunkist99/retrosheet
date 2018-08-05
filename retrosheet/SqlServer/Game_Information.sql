USE [retrosheet]
GO

/****** Object:  Table [dbo].[Game_Information]    Script Date: 7/19/2017 6:12:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Game_Information](
	[record_id] [uniqueidentifier] NOT NULL,
	[game_id] [varchar](50) NOT NULL,
	[visiting_team_id] [varchar](50) NOT NULL,
	[home_team_id] [varchar](50) NOT NULL,
	[game_date] [datetime] NOT NULL,
	[game_number] [int] NOT NULL,
	[start_time] [varchar](50) NULL,
	[day_night] [varchar](50) NULL,
	[used_dh] [char](1) NULL,
	[pitches] [varchar](50) NULL,
	[umpire_home_id] [varchar](50) NULL,
	[umpire_first_base_id] [varchar](50) NULL,
	[umpire_second_base_id] [varchar](50) NULL,
	[umpire_third_base_id] [varchar](50) NULL,
	[field_condition] [varchar](50) NULL,
	[precipitation] [varchar](50) NULL,
	[sky] [varchar](50) NULL,
	[temperature] [int] NULL,
	[wind_direction] [varchar](50) NULL,
	[wind_speed] [int] NULL,
	[game_time_length_minutes] [int] NULL,
	[attendance] [int] NULL,
	[ballpark_id] [varchar](50) NULL,
	[winning_pitcher_id] [varchar](50) NULL,
	[losing_pitcher_id] [varchar](50) NULL,
	[save_pitcher_id] [varchar](50) NULL,
	[winning_rbi_player_id] [varchar](50) NULL,
	[oscorer] [varchar](50) NULL,
 CONSTRAINT [PK_Game_Info] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

