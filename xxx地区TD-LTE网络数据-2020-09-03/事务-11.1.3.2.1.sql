begin tran
	alter table tboptcellnew
	add CELL_TYPE varchar NULL
rollback tran
select CELL_TYPE from tboptcellnew