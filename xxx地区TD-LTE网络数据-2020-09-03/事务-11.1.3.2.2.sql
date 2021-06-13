begin tran
	alter table tboptcellnew
	add CELL_TYPE varchar NULL
commit tran
select CELL_TYPE from tboptcellnew