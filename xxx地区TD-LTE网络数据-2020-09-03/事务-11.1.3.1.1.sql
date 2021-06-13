begin tran
	alter table tboptcellnew
	drop column CELL_TYPE
rollback tran
select CELL_TYPE from tboptcellnew