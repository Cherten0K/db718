CREATE TABLE [dbo].[CinemaTheaters] (
  [ID] [int] IDENTITY,
  [Name] [nvarchar](50) NULL,
  [Address] [nvarchar](150) NULL,
  [Description] [nvarchar](1000) NULL,
  CONSTRAINT [PK_CinemaTheaters_ID] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO