begin tran 
	insert into tbpciassignmentnew (PCI) values (500)
	select PCI from tbpciassignmentnew where PCI = 500
	delete from tbpciassignmentnew where PCI = 500
	update tbpciassignmentnew set PCI = PCI -5
	where PCI = 180
	select resource_type,resource_description,request_mode,request_status,request_type,request_lifetime
	from sys.dm_tran_locks
commit tran
