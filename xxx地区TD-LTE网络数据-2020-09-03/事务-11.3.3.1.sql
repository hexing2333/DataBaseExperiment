SET TRANSACTION ISOLATION LEVEL REPEATABLE READ
begin tran
select PCI,SECTOR_NAME from tbcellnew where SECTOR_ID = '124694-0'
WAITFOR DELAY '00:00:05'
select PCI from tbcellnew where SECTOR_ID = '124694-0'
commit tran
select * from [sys].[fn_dblog](NULL,NULL)