drop table emp01;


/*07*/
create table dept01 (Deptid number(10) NOT NULL
, deptname varchar2(10), location varchar2(10), tel varchar2(15));

create table emp01 (empid number(10) NOT NULL
, empname varchar2(10), hiredate date, addr varchar2(15), tel varchar2(15), deptid number(10));


/*08*/
alter table emp01 add birthday date;

/*09*/
insert into dept01 values(1001, '총무팀', '본101호', '053-777-8771');
insert into dept01 values(1002, '회계팀', '본102호', '053-888-9999');
insert into dept01 values(1003, '영업팀', '본103호', '053-222-3333');

insert into emp01 values(20121945, '박민수', '20120302', '대구', '010-1111-1234', 1001, '');
insert into emp01 values(20101817, '박준식', '20100901', '경산' ,'010-2222-1234', 1003, '');
insert into emp01 values(20122245, '선아라', '20120302', '대구' ,'010-3333-1222', 1002, '');
insert into emp01 values(20121729, '이범수', '20110302', '서울' ,'010-3333-4444', 1001, '');
insert into emp01 values(20121646, '이융희', '20120901', '부산' ,'010-1234-2222', 1003, '');

/*10*/
ALTER TABLE emp01 MODIFY empname NOT NULL;
select * from emp01;

/*11*/
select empname, hiredate,deptname from emp01 join dept01 using(deptid) where deptname = '총무팀';

/*12 직원테이블에서 대구에 살고있는 직원을 모두 삭제하시오*/
delete from emp01 where addr = '대구';

/*13 직원 테이블에서 "영업팀"에 근무하는 직원을 모두 "회계팀"으로 수정하는 SQL문을 작성하시오.*/
update emp01 
set deptid = (select deptid from dept01 where deptname='회계팀')
where deptid = (select deptid from dept01 where deptname='영업팀');

--14 직원 테이블에서 직원번호가 20121729인 직원의 입사입 보다 늦게 입사한 직원의 직원번호 이름 생년월일 부서이름을 출력하는 SQl문을 작성하시오
select e.empid, e.empname, e.hiredate, d.deptname 
from emp01 e, dept01 d where e.deptid=d.deptid and hiredate > (select hiredate from emp01 where empid='20121729');

--15 총무팀에 근무하는 직원의 이름, 주소, 부서명을 볼 수 있는 뷰를 생성하시오
create view vew_1 as
  select e.empname, e.addr, d.deptname
  from emp01 e, dept01 d
  where e.deptid = d.deptid
  and d.deptname='총무팀'; 









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
