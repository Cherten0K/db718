SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[udf_HasSeat] (
  @Row AS INT -- номер ряда
, @Seat AS INT -- номер места
, @CinemaHoll AS INT -- идентификатор кинозала
  )
-- WITH ENCRYPTION, SCHEMABINDING, EXECUTE AS CALLER|SELF|OWNER|USER
RETURNS BIT
AS
BEGIN
  IF EXISTS (SELECT
      1
    FROM dbo.Seats
    WHERE RowNumber = @Row
      AND SeatNumber = @Seat
      AND CinemaHollID = @CinemaHoll
  )
    RETURN 1;
  RETURN 0;
END
GO