begin tran
	alter table tboptcellnew
	drop column CELL_TYPE
commit tran
select CELL_TYPE from tboptcellnew