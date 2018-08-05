USE [retrosheet]
GO

/****** Object:  Table [dbo].[Team_Batting_Order_Adjustment]    Script Date: 7/19/2017 6:16:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
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

