USE [retrosheet]
GO

/****** Object:  Table [dbo].[Admin_Info]    Script Date: 7/19/2017 6:09:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[Admin_Info]
GO

CREATE TABLE [dbo].[Admin_Info](
	[record_id] [uniqueidentifier] NOT NULL,
	[game_id] [varchar](50) NOT NULL,
	[admin_info_type] [varchar](50) NULL,
	[admin_inf_value] [varchar](50) NULL,
 CONSTRAINT [PK_Admin_Info_1] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[Ballpark]    Script Date: 7/19/2017 6:09:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[Ballpark]
GO


CREATE TABLE [dbo].[Ballpark](
	[record_id] [uniqueidentifier] NOT NULL,
	[ballpark_id] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[aka] [varchar](50) NULL,
	[city] [varchar](50) NOT NULL,
	[state] [varchar](50) NOT NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[league] [varchar](50) NOT NULL,
	[notes] [varchar](200) NULL,
 CONSTRAINT [PK_Ballpark_1] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[Batter_Adjustment]    Script Date: 7/19/2017 6:09:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[Batter_Adjustment];
GO

CREATE TABLE [dbo].[Batter_Adjustment](
	[record_id] [uniqueidentifier] NOT NULL,
	[game_id] [varchar](50) NOT NULL,
	[inning] [int] NOT NULL,
	[game_team_code] [int] NOT NULL,
	[sequence] [int] NOT NULL,
	[player_id] [varchar](50) NOT NULL,
	[bats] [varchar](50) NOT NULL,
	[team_id] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Batter_Adjustment_1] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[Ejection]    Script Date: 7/19/2017 6:11:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[Ejection];
GO

CREATE TABLE [dbo].[Ejection](
	[record_id] [uniqueidentifier] NOT NULL,
	[game_id] [varchar](50) NOT NULL,
	[inning] [int] NOT NULL,
	[game_team_code] [int] NOT NULL,
	[sequence] [int] NOT NULL,
	[comment_sequence] [int] NULL,
	[player_id] [varchar](50) NOT NULL,
	[job_code] [varchar](50) NULL,
	[umpire_id] [varchar](50) NULL,
	[reason] [varchar](200) NULL,
 CONSTRAINT [PK_Ejection] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[Game_Comment]    Script Date: 7/19/2017 6:11:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[Game_Comment];
GO

CREATE TABLE [dbo].[Game_Comment](
	[record_id] [uniqueidentifier] NOT NULL,
	[game_id] [varchar](50) NOT NULL,
	[inning] [int] NOT NULL,
	[game_team_code] [int] NOT NULL,
	[sequence] [int] NOT NULL,
	[comment_sequence] [int] NOT NULL,
	[comment] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Game_Comment] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[Game_Data]    Script Date: 7/19/2017 6:12:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[Game_Data];
GO

CREATE TABLE [dbo].[Game_Data](
	[record_id] [uniqueidentifier] NOT NULL,
	[game_id] [varchar](50) NOT NULL,
	[data_type] [varchar](50) NOT NULL,
	[player_id] [varchar](50) NOT NULL,
	[data_value] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Game_Data] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[Game_Info]    Script Date: 7/19/2017 6:12:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[Game_Info];
GO

CREATE TABLE [dbo].[Game_Info](
	[record_id] [uniqueidentifier] NOT NULL,
	[game_id] [varchar](50) NOT NULL,
	[game_info_type] [varchar](50) NOT NULL,
	[game_info_value] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Game_Info_1] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[Game_Information]    Script Date: 7/19/2017 6:12:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[Game_Information];
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
	[edit_type] [varchar](50) NULL,
	[how_scored] [varchar](50) NULL,
	[inputter] [varchar](50) NULL,
	[input_prog_vers] [varchar](50) NULL,
	[input_time] [varchar](50) NULL,
	[scorer] [varchar](50) NULL,
	[season_game_type] [varchar](50) NULL,
	[season_year] [varchar](50) NULL,
	[translator] [varchar](50) NULL,

 CONSTRAINT [PK_Game_Info] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[Game_Suspension]    Script Date: 7/19/2017 6:12:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[Game_Suspension];
GO

CREATE TABLE [dbo].[Game_Suspension](
	[record_id] [uniqueidentifier] NOT NULL,
	[game_id] [varchar](50) NOT NULL,
	[inning] [int] NOT NULL,
	[sequence] [int] NOT NULL,
	[comsequence] [int] NOT NULL,
	[completion_date] [datetime] NULL,
	[ballpark_id] [varchar](50) NOT NULL,
	[visitor_team_score] [int] NULL,
	[home_team_score] [int] NULL,
	[game_outs] [int] NULL,
 CONSTRAINT [PK_Game_Suspension_1] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[Personal]    Script Date: 7/19/2017 6:13:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[Personnel];
GO

CREATE TABLE [dbo].[Personnel](
	[record_id] [uniqueidentifier] NOT NULL,
	[person_id] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[career_date] [datetime] NOT NULL,
	[role] [char](1) NOT NULL,
 CONSTRAINT [PK_personal] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[Pitcher_Adjustment]    Script Date: 7/19/2017 6:13:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[Pitcher_Adjustment];
GO

CREATE TABLE [dbo].[Pitcher_Adjustment](
	[record_id] [uniqueidentifier] NOT NULL,
	[game_id] [varchar](50) NOT NULL,
	[inning] [int] NOT NULL,
	[game_team_code] [int] NOT NULL,
	[sequence] [int] NOT NULL,
	[player_id] [varchar](50) NOT NULL,
	[pitcher_hand] [char](1) NOT NULL,
	[team_id] [char](1) NOT NULL,
 CONSTRAINT [PK_Pitcher_Adjustment] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[Play]    Script Date: 7/19/2017 6:14:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[Play];
GO

CREATE TABLE [dbo].[Play](
	[record_id] [uniqueidentifier] NOT NULL,
	[game_id] [varchar](50) NOT NULL,
	[inning] [int] NOT NULL,
	[game_team_code] [int] NOT NULL,
	[sequence] [int] NOT NULL,
	[player_id] [varchar](50) NOT NULL,
	[count_balls] [int] NULL,
	[count_strikes] [int] NULL,
	[pitches] [varchar](50) NULL,
	[event_sequence] [varchar](50) NULL,
	[event_modifier] [varchar](50) NULL,
	[event_runner_advance] [varchar](50) NULL,
 	[event_columnSix] [varchar](50) NULL,
	[event_fielded_by] [varchar](50) NULL,
	[event_hit_location] [varchar](50) NULL,
	[event_num] [int] NULL,
	[event_play_on_runner] [varchar](50) NULL,
	[event_type] [varchar](50) NULL,
	[season_game_type] [varchar](50) NULL,
	[season_year] [varchar](50) NULL,
 CONSTRAINT [PK_Play_new] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[Player]    Script Date: 7/19/2017 6:14:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[Player];
GO

CREATE TABLE [dbo].[Player](
	[record_id] [uniqueidentifier] NOT NULL,
	[player_id] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[throws] [varchar](50) NOT NULL,
	[bats] [varchar](50) NOT NULL,
	[team_id] [varchar](50) NOT NULL,
	[field_position] [varchar](50) NOT NULL,
	[season_game_type] [varchar](50) NOT NULL,
	[season_year] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Player] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[Protest]    Script Date: 7/19/2017 6:14:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[Protest];
GO

CREATE TABLE [dbo].[Protest](
	[record_id] [uniqueidentifier] NOT NULL,
	[game_id] [varchar](50) NOT NULL,
	[game_team_code] [int] NOT NULL,
	[inning] [int] NOT NULL,
	[sequence] [int] NOT NULL,
	[comment_sequence] [int] NOT NULL,
	[protest_code] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Protest_1] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[Reference_Data]    Script Date: 7/19/2017 6:14:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[Reference_Data];
GO

CREATE TABLE [dbo].[Reference_Data](
	[record_id] [uniqueidentifier] NOT NULL,
	[ref_data_type] [varchar](50) NOT NULL,
	[ref_data_code] [varchar](50) NOT NULL,
	[ref_data_desc] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Reference_Data_1] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Reference_Data] ADD  CONSTRAINT [DF_ref_data_ref_data_id]  DEFAULT (newid()) FOR [record_id]
GO

/****** Object:  Table [dbo].[Replay]    Script Date: 7/19/2017 6:14:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[Replay];
GO

CREATE TABLE [dbo].[Replay](
	[record_id] [uniqueidentifier] NOT NULL,
	[game_id] [varchar](50) NOT NULL,
	[inning] [int] NOT NULL,
	[game_team_code] [int] NOT NULL,
	[sequence] [int] NOT NULL,
	[comment_sequence] [int] NULL,
	[player_id] [varchar](50) NOT NULL,
	[team_id] [varchar](50) NOT NULL,
	[umpire_id] [varchar](50) NULL,
	[ballpark_id] [varchar](50) NOT NULL,
	[reason] [varchar](200) NULL,
	[reversed] [char](1) NULL,
	[initiated] [varchar](200) NULL,
	[replay_challenge_team_id] [varchar](50) NULL,
	[type] [varchar](50) NULL,
 CONSTRAINT [PK_Replay] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[Starting_Player]    Script Date: 7/19/2017 6:14:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[Starting_Player];
GO

CREATE TABLE [dbo].[Starting_Player](
	[record_id] [uniqueidentifier] NOT NULL,
	[game_id] [varchar](50) NOT NULL,
	[player_id] [varchar](50) NOT NULL,
	[game_team_code] [int] NOT NULL,
	[batting_order] [int] NOT NULL,
	[field_position] [int] NOT NULL,
	[team_id] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Starting_Player] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[Substitute_Player]    Script Date: 7/19/2017 6:15:10 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[Substitute_Player];
GO

CREATE TABLE [dbo].[Substitute_Player](
	[record_id] [uniqueidentifier] NOT NULL,
	[game_id] [varchar](50) NOT NULL,
	[inning] [int] NOT NULL,
	[game_team_code] [int] NOT NULL,
	[sequence] [int] NOT NULL,
	[player_id] [varchar](50) NOT NULL,
	[batting_order] [int] NOT NULL,
	[field_position] [int] NOT NULL,
	[team_id] [varchar](50) NOT NULL,

 CONSTRAINT [PK_Substitute_Player] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[Substitute_Umpire]    Script Date: 7/19/2017 6:15:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[Substitute_Umpire];
GO

CREATE TABLE [dbo].[Substitute_Umpire](
	[record_id] [uniqueidentifier] NOT NULL,
	[game_id] [varchar](50) NOT NULL,
	[inning] [int] NOT NULL,
	[sequence] [int] NOT NULL,
	[comment_sequence] [int] NULL,
	[field_position] [varchar](50) NOT NULL,
	[umpire_id] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Substitute_Umpire] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[Team]    Script Date: 7/19/2017 6:15:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[Team]
GO

CREATE TABLE [dbo].[Team](
	[record_id] [uniqueidentifier] NOT NULL,
	[team_id] [varchar](50) NOT NULL,
	[league] [varchar](50) NOT NULL,
	[city] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[season_game_type] [varchar](50) NOT NULL,
	[season_year] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[Team_Batting_Order_Adjustment]    Script Date: 7/19/2017 6:16:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

DROP TABLE IF EXISTS [dbo].[Team_Batting_Order_Adjustment]
GO

CREATE TABLE [dbo].[Team_Batting_Order_Adjustment](
	[record_id] [uniqueidentifier] NOT NULL,
	[game_id] [varchar](50) NOT NULL,
	[inning] [int] NOT NULL,
	[sequence] [int] NOT NULL,
	[rest_of_the_record] [varchar](200) NULL,
 CONSTRAINT [PK_Team_Batting_Order_Adjustment] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



