USE [retrosheet]
GO

/****** Object:  Table [dbo].[Personal]    Script Date: 7/19/2017 6:13:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Personal](
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

