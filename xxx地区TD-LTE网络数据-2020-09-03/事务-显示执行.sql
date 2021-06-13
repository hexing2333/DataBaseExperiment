begin tran
begin try
	select SECTOR_ID,EARFCN from tbcellnew
	where SECTOR_ID between '15310-0' and '15380-0'
	update tbCellnew set EARFCN=37900
	where SECTOR_ID between '15310-0' and '15380-0'
	select SECTOR_ID,EARFCN from tbcellnew
	where SECTOR_ID between '15310-0' and '15380-0'
end try
begin catch
	select	Error_number() as ErrorNumber, --错误代码 
			Error_severity() as ErrorSeverity, --错误严重级别，级别小于try catch 捕获不到
			Error_state() as ErrorState , --错误状态码
			Error_Procedure() as ErrorProcedure , --出现错误的存储过程或触发器的名称。
			Error_line() as ErrorLine, --发生错误的行号
			Error_message() as ErrorMessage --错误的具体信息
	if(@@trancount>0) --全局变量@@trancount，事务开启此值+1，他用来判断是有开启事务
		rollback tran ---由于出错，这里回滚到开始，第一条语句也没有插入成功。
end catch
if(@@trancount>0)
	commit tran
select SECTOR_ID,EARFCN from tbcellnew
where SECTOR_ID between '15310-0' and '15380-0'