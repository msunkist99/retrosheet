USE [retrosheet]
GO

/****** Object:  Table [dbo].[Game_Data]    Script Date: 7/19/2017 6:12:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
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

