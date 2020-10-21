drop table emp01;
drop sequence emp01_seq;

create table emp01 (
	empno number, 
	ename varchar2(30), 
	hiredate date, 
	pay number
);

create sequence emp01_seq;

insert into emp01 values (emp01_seq.nextval, '������', sysdate, 1000);
insert into emp01 values (emp01_seq.nextval, '�̰��', sysdate, 3000);
insert into emp01 values (emp01_seq.nextval, '�ź���', sysdate, 500);
insert into emp01 values (emp01_seq.nextval, '�輺��', sysdate, 1500);
insert into emp01 values (emp01_seq.nextval, 'ȫâ��', sysdate, 2000);

commit;