USE [retrosheet]
GO

/****** Object:  Table [dbo].[Admin_Info]    Script Date: 7/19/2017 6:09:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
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

