create view view1
as
select CPM as '��Ʒ��',JG as '�۸�',SCCJ as '��������'
from CPB
where SCCJ='����' and JG<(select AVG(JG) from CPB where SCCJ='����')

select *
from view1
