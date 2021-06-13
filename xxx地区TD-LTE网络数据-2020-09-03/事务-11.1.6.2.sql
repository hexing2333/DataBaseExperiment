SET XACT_ABORT ON
begin tran 
	insert into tbpciassignmentnew (PCI) values (300)
	insert into tbpciassignmentnew (PCI) values (600)
commit tran