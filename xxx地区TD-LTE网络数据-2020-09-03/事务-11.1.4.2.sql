begin tran 
	select SECTOR_ID,SECTOR_NAME,HEIGHT from tbcellnew
	where HEIGHT < 7

	insert into tbcellnew (SECTOR_ID,HEIGHT) values ('211100-2',6)
	delete from tbcellnew where SECTOR_ID = '211100-2'

	select SECTOR_ID,SECTOR_NAME,HEIGHT from tbcellnew
	where HEIGHT < 7
commit tran 
select SECTOR_ID,SECTOR_NAME,HEIGHT from tbcellnew
where HEIGHT < 7