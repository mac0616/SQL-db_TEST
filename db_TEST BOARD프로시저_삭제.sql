--BOARD 프로시저 삭제
DROP PROCEDURE PRO_BOARD2
GO

CREATE PROCEDURE usp_GetErrorInfo
AS  
SELECT  
    ERROR_NUMBER() AS ErrorNumber  
    ,ERROR_SEVERITY() AS ErrorSeverity  
    ,ERROR_STATE() AS ErrorState  
    ,ERROR_PROCEDURE() AS ErrorProcedure  
    ,ERROR_LINE() AS ErrorLine  
    ,ERROR_MESSAGE() AS ErrorMessage;  
GO  
  
BEGIN TRY  
    SELECT 1/0;  
END TRY  
BEGIN CATCH   
    EXECUTE usp_GetErrorInfo;  
END CATCH;