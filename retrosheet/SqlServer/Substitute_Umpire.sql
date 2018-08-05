USE [retrosheet]
GO

/****** Object:  Table [dbo].[Substitute_Umpire]    Script Date: 7/19/2017 6:15:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
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

