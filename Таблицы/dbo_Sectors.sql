CREATE TABLE [dbo].[Sectors] (
  [ID] [int] IDENTITY,
  [Name] [nvarchar](50) NULL,
  [Description] [nvarchar](1000) NULL,
  [StartRow] [int] NOT NULL,
  [EndRow] [int] NOT NULL,
  [CinemaHollID] [int] NOT NULL,
  CONSTRAINT [PK_Sectors_ID] PRIMARY KEY CLUSTERED ([ID]),
  CONSTRAINT [CK_Sectors_EndRow] CHECK ([EndRow]>[StartRow]),
  CONSTRAINT [FK_Sectors_CinemaHollID] FOREIGN KEY ([CinemaHollID]) REFERENCES [dbo].[CinemaHolls] ([ID])
)
ON [PRIMARY]
GO