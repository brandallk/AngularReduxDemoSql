CREATE TABLE [AngularReduxAlternativesDemo].[dbo].[Table] (
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SectionId] [int] NULL,
	[ServerId] [int] NULL
	CONSTRAINT [pk_table] PRIMARY KEY CLUSTERED
		(
			[Id] ASC
		)
		WITH
		(
			PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON
		)
		ON [PRIMARY]
	) ON [PRIMARY];

ALTER TABLE [AngularReduxAlternativesDemo].[dbo].[Table]  WITH CHECK ADD  CONSTRAINT [fk_tablesection] FOREIGN KEY([SectionId])
REFERENCES [AngularReduxAlternativesDemo].[dbo].[Section] ([Id]);

ALTER TABLE [AngularReduxAlternativesDemo].[dbo].[Table] CHECK CONSTRAINT [fk_tablesection];


ALTER TABLE [AngularReduxAlternativesDemo].[dbo].[Table]  WITH CHECK ADD  CONSTRAINT [fk_tableserver] FOREIGN KEY([ServerId])
REFERENCES [AngularReduxAlternativesDemo].[dbo].[Server] ([Id]);

ALTER TABLE [AngularReduxAlternativesDemo].[dbo].[Table] CHECK CONSTRAINT [fk_tableserver];
  