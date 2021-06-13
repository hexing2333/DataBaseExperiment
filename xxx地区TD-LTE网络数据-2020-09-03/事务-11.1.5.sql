begin tran 
	select SECTOR_ID,SECTOR_NAME,PCI from tbpciassignment
	where PCI = 106

	insert into tbpciassignment (SECTOR_ID,PCI) values ('220102-5',106)
save tran ppp
	delete from tbpciassignment where SECTOR_ID = '220102-5'
rollback tran ppp
commit tran
select SECTOR_ID,SECTOR_NAME,PCI from tbpciassignment
where PCI = 106