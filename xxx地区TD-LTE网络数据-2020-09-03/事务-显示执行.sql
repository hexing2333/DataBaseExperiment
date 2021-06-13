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
	select	Error_number() as ErrorNumber, --������� 
			Error_severity() as ErrorSeverity, --�������ؼ��𣬼���С��try catch ���񲻵�
			Error_state() as ErrorState , --����״̬��
			Error_Procedure() as ErrorProcedure , --���ִ���Ĵ洢���̻򴥷��������ơ�
			Error_line() as ErrorLine, --����������к�
			Error_message() as ErrorMessage --����ľ�����Ϣ
	if(@@trancount>0) --ȫ�ֱ���@@trancount����������ֵ+1���������ж����п�������
		rollback tran ---���ڳ�������ع�����ʼ����һ�����Ҳû�в���ɹ���
end catch
if(@@trancount>0)
	commit tran
select SECTOR_ID,EARFCN from tbcellnew
where SECTOR_ID between '15310-0' and '15380-0'