CREATE FUNCTION [dbo].[NUMBER_TO_STRING](@nNUM INT)
RETURNS VARCHAR(10)
AS BEGIN DECLARE @STRNUM VARCHAR(10);
IF @nNUM = 1 SET @STRNUM='��';
else if @nNUM = 2 SET @STRNUM='��';
else if @nNUM = 3 SET @STRNUM='��';
else if @nNUM = 4 SET @STRNUM='��';
else if @nNUM = 5 SET @STRNUM='��';
else if @nNUM = 6 SET @STRNUM='��';
else if @nNUM = 7 SET @STRNUM='ĥ';
else if @nNUM = 8 SET @STRNUM='��';
else if @nNUM = 9 SET @STRNUM='��';
else if @nNUM = 10 SET @STRNUM='��';

RETURN @STRNUM;
END