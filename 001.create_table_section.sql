-- DROP TABLE [AngularReduxAlternativesDemo].[dbo].[Section];

CREATE TABLE [AngularReduxAlternativesDemo].[dbo].[Section] (
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[TableCount] [int] NULL,
	CONSTRAINT [pk_section] PRIMARY KEY CLUSTERED
		(
			[Id] ASC
		)
		WITH
		(
			PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON
		)
		ON [PRIMARY]
	) ON [PRIMARY];
  