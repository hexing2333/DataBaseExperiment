begin tran 
	select SECTOR_ID from tbcellnew where HEIGHT < 7
	update tbcellnew set HEIGHT = 10 where SECTOR_ID = '1246778-2'
	insert into tbcellnew (SECTOR_ID,SECTOR_NAME,HEIGHT) values ('211100-2','123',6)
	delete from tbcellnew where SECTOR_ID = '211100-2'
rollback tran
SELECT * FROM [sys].[fn_dblog](NULL,NULL)