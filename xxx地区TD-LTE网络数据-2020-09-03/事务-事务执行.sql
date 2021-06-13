begin tran
	select SECTOR_ID,SECTOR_NAME,HEIGHT from tbcellnew
	where HEIGHT < 20

	update tbcellnew set HEIGHT = HEIGHT - 15
	where HEIGHT < 20

	select SECTOR_ID,SECTOR_NAME,HEIGHT from tbcellnew
	where HEIGHT < 20
commit tran

select SECTOR_ID,SECTOR_NAME,HEIGHT from tbcellnew
where HEIGHT < 20;
