create procedure proc_abc
@myzgh char(6)
as declare @count int
set @count=
(
select count(*)
from XSRYB
where ZGH=@myzgh
)
if @count>0
begin
	select XSRYB.XM as '����',CPB.CPM as '��Ʒ��',XSQKB.XSRQ as '��������',XSQKB.XSSL as '��������'
	from XSRYB inner join XSQKB on XSRYB.ZGH=XSQKB.ZGH
	inner join CPB on CPB.CPH=XSQKB.CPH
	where XSRYB.ZGH=@myzgh
end
else
begin
	print '��ѯְ���Ų����ڣ�'
end
