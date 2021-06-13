select VENDOR from tbcellnew where SECTOR_ID = '124674-1'
update tbcellnew set VENDOR = 'สาทึ' where SECTOR_ID = '124674-1'
select VENDOR from tbcellnew where SECTOR_ID = '124674-1'
insert into tbcellnew (SECTOR_ID,HEIGHT) values ('211100-2',6)
delete from tbcellnew where SECTOR_ID = '211100-2'

SELECT * FROM [sys].[fn_dblog](NULL,NULL)