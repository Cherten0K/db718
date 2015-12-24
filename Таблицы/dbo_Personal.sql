CREATE TABLE [dbo].[Personal] (
  [ID] [int] IDENTITY,
  [Name] [nvarchar](50) NOT NULL,
  [CinemaTheaterID] [int] NOT NULL,
  [JobTitleID] [int] NOT NULL,
  [State] [nvarchar](50) NOT NULL,
  CONSTRAINT [PK_Personal_ID] PRIMARY KEY CLUSTERED ([ID]),
  CONSTRAINT [FK_Personal_CinemaTheaterID] FOREIGN KEY ([CinemaTheaterID]) REFERENCES [dbo].[CinemaTheaters] ([ID]),
  CONSTRAINT [FK_Personal_JobTitleID] FOREIGN KEY ([JobTitleID]) REFERENCES [dbo].[JobTitles] ([ID])
)
ON [PRIMARY]
GO