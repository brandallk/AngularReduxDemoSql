CREATE TABLE [AngularReduxAlternativesDemo].[dbo].[Server] (
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[TableCount] [int] NULL,
	CONSTRAINT [pk_server] PRIMARY KEY CLUSTERED
		(
			[Id] ASC
		)
		WITH
		(
			PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON
		)
		ON [PRIMARY]
	) ON [PRIMARY];
  