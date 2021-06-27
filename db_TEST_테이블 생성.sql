USE test;
CREATE TABLE BOARD(
	ID uniqueidentifier PRIMARY KEY,
	SORT int not null,
	NAME varbinary(100)not null,
	TITLE varchar(200)not null,
	CONTENTS text,
	VLEW_CNT int not null DEFAULT 0,
	REGIST_DATE datetime not null DEFAULT getdate());
	--DECRYPTBYPASSPHRASE('키값', '문자열'NAME)

GO

CREATE TABLE BOARD_REPLY(
	ID uniqueidentifier  PRIMARY KEY ,
	SORT int not null,
	FK_BOARD uniqueidentifier not null,
	CONTENTS varchar(500) not null,
	REGIST_DATE datetime not null DEFAULT getdate());
	GO
	SELECT*FROM BOARD;
	SELECT*FROM BOARD_REPLY;
	
	
