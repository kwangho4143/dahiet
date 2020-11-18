drop table emp01;


/*07*/
create table dept01 (Deptid number(10) NOT NULL
, deptname varchar2(10), location varchar2(10), tel varchar2(15));

create table emp01 (empid number(10) NOT NULL
, empname varchar2(10), hiredate date, addr varchar2(15), tel varchar2(15), deptid number(10));


/*08*/
alter table emp01 add birthday date;

/*09*/
insert into dept01 values(1001, '�ѹ���', '��101ȣ', '053-777-8771');
insert into dept01 values(1002, 'ȸ����', '��102ȣ', '053-888-9999');
insert into dept01 values(1003, '������', '��103ȣ', '053-222-3333');

insert into emp01 values(20121945, '�ڹμ�', '20120302', '�뱸', '010-1111-1234', 1001, '');
insert into emp01 values(20101817, '���ؽ�', '20100901', '���' ,'010-2222-1234', 1003, '');
insert into emp01 values(20122245, '���ƶ�', '20120302', '�뱸' ,'010-3333-1222', 1002, '');
insert into emp01 values(20121729, '�̹���', '20110302', '����' ,'010-3333-4444', 1001, '');
insert into emp01 values(20121646, '������', '20120901', '�λ�' ,'010-1234-2222', 1003, '');

/*10*/
ALTER TABLE emp01 MODIFY empname NOT NULL;
select * from emp01;

/*11*/
select empname, hiredate,deptname from emp01 join dept01 using(deptid) where deptname = '�ѹ���';

/*12 �������̺��� �뱸�� ����ִ� ������ ��� �����Ͻÿ�*/
delete from emp01 where addr = '�뱸';

/*13 ���� ���̺��� "������"�� �ٹ��ϴ� ������ ��� "ȸ����"���� �����ϴ� SQL���� �ۼ��Ͻÿ�.*/
update emp01 
set deptid = (select deptid from dept01 where deptname='ȸ����')
where deptid = (select deptid from dept01 where deptname='������');

--14 ���� ���̺��� ������ȣ�� 20121729�� ������ �Ի��� ���� �ʰ� �Ի��� ������ ������ȣ �̸� ������� �μ��̸��� ����ϴ� SQl���� �ۼ��Ͻÿ�
select e.empid, e.empname, e.hiredate, d.deptname 
from emp01 e, dept01 d where e.deptid=d.deptid and hiredate > (select hiredate from emp01 where empid='20121729');

--15 �ѹ����� �ٹ��ϴ� ������ �̸�, �ּ�, �μ����� �� �� �ִ� �並 �����Ͻÿ�
create view vew_1 as
  select e.empname, e.addr, d.deptname
  from emp01 e, dept01 d
  where e.deptid = d.deptid
  and d.deptname='�ѹ���'; 









desc emp01;

select * from employees;
select * from departments;

select e.employee_id, e.last_name, d.department_name
from employees e, departments d
where e.department_id = d.department_id
and e.salary > 
(select salary from employees 
where employee_id = 176);

select e.employee_id, e.last_name, d.department_name
from employees e JOIN departments d
ON(e.department_id = d.department_id)
where e.salary > 
(select salary from employees 
where employee_id = 176);
