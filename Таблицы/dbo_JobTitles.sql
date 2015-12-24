CREATE TABLE [dbo].[JobTitles] (
  [ID] [int] IDENTITY,
  [JobTitle] [nvarchar](50) NOT NULL,
  CONSTRAINT [PK_JobTitles_ID] PRIMARY KEY CLUSTERED ([ID])
)
ON [PRIMARY]
GO