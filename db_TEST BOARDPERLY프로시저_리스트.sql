--BOARD_REPLY 프로시저 리스트
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BOARDLIST2]
	@page INT,
	@rows INT,
	@search_word nvarchar(50)
AS
	SELECT SORT, FK_BOARD, CONTENTS FROM [dbo].[BOARD_REPLY]
	ORDER BY REGIST_DATE ASC
	OFFSET (@page - 1) * @rows ROWS
	FETCH NEXT @rows ROWS ONLY