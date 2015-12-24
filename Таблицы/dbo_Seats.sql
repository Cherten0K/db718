CREATE TABLE [dbo].[Seats] (
  [ID] [int] IDENTITY,
  [CinemaHollID] [int] NOT NULL,
  [RowNumber] [int] NOT NULL,
  [SeatNumber] [int] NOT NULL,
  CONSTRAINT [PK_Seats_ID] PRIMARY KEY CLUSTERED ([ID]),
  CONSTRAINT [CK_Seats_SeatNumber] CHECK ([dbo].[udf_HasSeat]([RowNumber],[SeatNumber],[CinemaHollID])=(0)),
  CONSTRAINT [FK_Seats_CinemaHollID] FOREIGN KEY ([CinemaHollID]) REFERENCES [dbo].[CinemaHolls] ([ID])
)
ON [PRIMARY]
GO