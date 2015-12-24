CREATE TABLE [dbo].[Tickets] (
  [ID] [int] IDENTITY,
  [DateIssue] [datetime] NOT NULL,
  [SeatID] [int] NOT NULL,
  [Paid] [bit] NULL,
  [Reserved] [bit] NULL,
  [Destroyed] [bit] NULL,
  CONSTRAINT [PK_Tickets_ID] PRIMARY KEY CLUSTERED ([ID]),
  CONSTRAINT [FK_Tickets_SeatID] FOREIGN KEY ([SeatID]) REFERENCES [dbo].[Seats] ([ID])
)
ON [PRIMARY]
GO