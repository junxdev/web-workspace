drop table emp02;
drop sequence emp02_seq;

create table emp02 (
	empno number primary key,
	ename varchar2(30),
	hiredate date,
	pay number
);

create sequence emp02_seq;

insert into emp02 (empno, ename, hiredate, pay) values (emp02_seq.nextval, '배주현', sysdate, 1000);
insert into emp02 (empno, ename, hiredate, pay) values (emp02_seq.nextval, '강슬기', sysdate, 1500);
insert into emp02 (empno, ename, hiredate, pay) values (emp02_seq.nextval, '손승완', sysdate, 2000);
insert into emp02 (empno, ename, hiredate, pay) values (emp02_seq.nextval, '박수영', sysdate, 2500);
insert into emp02 (empno, ename, hiredate, pay) values (emp02_seq.nextval, '김예림', sysdate, 3000);

commit;