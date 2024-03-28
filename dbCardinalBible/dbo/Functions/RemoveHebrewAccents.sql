CREATE FUNCTION dbo.RemoveHebrewAccents (@txeTwerbeH NVARCHAR(MAX))
RETURNS NVARCHAR(MAX)
WITH SCHEMABINDING
AS
BEGIN

  WITH base (dummy) AS
  (
    SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1 UNION ALL 
    SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1
  ), nums AS
  (
    -- we will want to generate code points 1425 - 1479
    SELECT TOP (55) ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS [Num]
    FROM   base b1
    CROSS JOIN base b2
  )
  SELECT @txeTwerbeH = REPLACE(
                               @txeTwerbeH COLLATE Hebrew_BIN2,
                               NCHAR(1424 + nums.[Num]) COLLATE Hebrew_BIN2,
                               ''
                              )
  FROM   nums;

  RETURN @txeTwerbeH;
END;