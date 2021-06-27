--BOARD 프로시저 조회
CREATE PROCEDURE PRO_BOARD2
@P_ID uniqueidentifier,
@P_NAME VARBINARY(100) out,
@P_TITLE varchar(200) out,
@P_CONTENTS text out,
@P_REGIST_DATE datetime out
AS 
SELECT P_ID=ID FROM BOARD

sp_helptext 'dbo.PRO_BOARD2'

