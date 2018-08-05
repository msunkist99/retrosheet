USE [retrosheet]
GO

/****** Object:  Table [dbo].[Reference_Data]    Script Date: 7/19/2017 6:14:31 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
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

