CREATE TABLE [dbo].[Prices] (
  [ID] [int] IDENTITY,
  [Price] [decimal](18, 6) NOT NULL,
  [FilmID] [int] NOT NULL,
  [SectorID] [int] NOT NULL,
  CONSTRAINT [PK_Prices_ID] PRIMARY KEY CLUSTERED ([ID]),
  CONSTRAINT [FK_Prices_FilmID] FOREIGN KEY ([FilmID]) REFERENCES [dbo].[Films] ([ID]),
  CONSTRAINT [FK_Prices_SectorID] FOREIGN KEY ([SectorID]) REFERENCES [dbo].[Sectors] ([ID])
)
ON [PRIMARY]
GO