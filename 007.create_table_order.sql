CREATE TABLE [AngularReduxAlternativesDemo].[dbo].[Order] (
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TableId] [int] NULL,
	[ServerId] [int] NULL
	CONSTRAINT [pk_order] PRIMARY KEY CLUSTERED
		(
			[Id] ASC
		)
		WITH
		(
			PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON
		)
		ON [PRIMARY]
	) ON [PRIMARY];

ALTER TABLE [AngularReduxAlternativesDemo].[dbo].[Order]  WITH CHECK ADD  CONSTRAINT [fk_ordertable] FOREIGN KEY([TableId])
REFERENCES [AngularReduxAlternativesDemo].[dbo].[Table] ([Id]);

ALTER TABLE [AngularReduxAlternativesDemo].[dbo].[Order] CHECK CONSTRAINT [fk_ordertable];


ALTER TABLE [AngularReduxAlternativesDemo].[dbo].[Order]  WITH CHECK ADD  CONSTRAINT [fk_orderserver] FOREIGN KEY([ServerId])
REFERENCES [AngularReduxAlternativesDemo].[dbo].[Server] ([Id]);

ALTER TABLE [AngularReduxAlternativesDemo].[dbo].[Order] CHECK CONSTRAINT [fk_orderserver];
  