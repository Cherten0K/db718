CREATE TABLE [dbo].[OperationTickets] (
  [ID] [int] IDENTITY,
  [DateOperation] [datetime] NULL,
  [TicketID] [int] NOT NULL,
  [Operation] [nvarchar](50) NOT NULL,
  CONSTRAINT [PK_OperationTickets_ID] PRIMARY KEY CLUSTERED ([ID]),
  CONSTRAINT [FK_OperationTickets_TicketID] FOREIGN KEY ([TicketID]) REFERENCES [dbo].[Tickets] ([ID])
)
ON [PRIMARY]
GO