begin tran
	select SECTOR_ID,EARFCN from tbcellnew
	where SECTOR_ID between '15310-0' and '15380-0'
	update tbCellnew set EARFCN=37900
	where SECTOR_ID between '15310-0' and '15380-0'
	select SECTOR_ID,EARFCN from tbcellnew
	where SECTOR_ID between '15310-0' and '15380-0'

rollback tran
select SECTOR_ID,EARFCN from tbcellnew
where SECTOR_ID between '15310-0' and '15380-0'