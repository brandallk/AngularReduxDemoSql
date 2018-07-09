-- DROP TABLE [AngularReduxAlternativesDemo].[dbo].[MealItem];

CREATE TABLE [AngularReduxAlternativesDemo].[dbo].[MealItem] (
	[Id] [int] IDENTITY(1,1) NOT NULL,
  [Name] [varchar](50) NULL,
	[OrderId] [int] NULL
	CONSTRAINT [pk_mealitem] PRIMARY KEY CLUSTERED
		(
			[Id] ASC
		)
		WITH
		(
			PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON
		)
		ON [PRIMARY]
	) ON [PRIMARY];

ALTER TABLE [AngularReduxAlternativesDemo].[dbo].[MealItem]  WITH CHECK ADD  CONSTRAINT [fk_mealitemorder] FOREIGN KEY([OrderId])
REFERENCES [AngularReduxAlternativesDemo].[dbo].[Order] ([Id]);

ALTER TABLE [AngularReduxAlternativesDemo].[dbo].[MealItem] CHECK CONSTRAINT [fk_mealitemorder];
