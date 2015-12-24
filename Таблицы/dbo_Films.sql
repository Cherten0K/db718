CREATE TABLE [dbo].[Films] (
  [ID] [int] IDENTITY,
  [Name] [nvarchar](50) NOT NULL,
  [Length] [int] NOT NULL,
  [Description] [nvarchar](1000) NULL,
  [StartRent] [date] NULL,
  [EndRent] [date] NULL,
  [CompanyRenter] [nvarchar](100) NULL,
  CONSTRAINT [PK_Films_ID] PRIMARY KEY CLUSTERED ([ID]),
  CONSTRAINT [CK_Films_EndRent] CHECK ([EndRent]>[StartRent])
)
ON [PRIMARY]
GO