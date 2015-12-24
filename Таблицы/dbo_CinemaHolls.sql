CREATE TABLE [dbo].[CinemaHolls] (
  [ID] [int] IDENTITY,
  [Name] [nvarchar](50) NULL,
  [Description] [nvarchar](1000) NULL,
  [CinemaTheaterID] [int] NOT NULL,
  CONSTRAINT [PK_CinemaHolls_ID] PRIMARY KEY CLUSTERED ([ID]),
  CONSTRAINT [FK_CinemaHolls_CinemaTheaterID] FOREIGN KEY ([CinemaTheaterID]) REFERENCES [dbo].[CinemaTheaters] ([ID])
)
ON [PRIMARY]
GO