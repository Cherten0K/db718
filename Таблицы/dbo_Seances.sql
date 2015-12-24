CREATE TABLE [dbo].[Seances] (
  [ID] [int] IDENTITY,
  [FilmID] [int] NOT NULL,
  [StartDateTime] [datetime] NOT NULL,
  [CinemaHollID] [int] NOT NULL,
  CONSTRAINT [PK_Seances_ID] PRIMARY KEY CLUSTERED ([ID]),
  CONSTRAINT [FK_Seances_CinemaHollID] FOREIGN KEY ([CinemaHollID]) REFERENCES [dbo].[CinemaHolls] ([ID]),
  CONSTRAINT [FK_Seances_FilmID] FOREIGN KEY ([FilmID]) REFERENCES [dbo].[Films] ([ID])
)
ON [PRIMARY]
GO