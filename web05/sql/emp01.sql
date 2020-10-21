drop table emp01;
drop sequence emp01_seq;

create table emp01 (
	empno number, 
	ename varchar2(30), 
	hiredate date, 
	pay number
);

create sequence emp01_seq;

insert into emp01 values (emp01_seq.nextval, '°­Çü¿í', sysdate, 1000);
insert into emp01 values (emp01_seq.nextval, 'ÀÌ°æ±Ô', sysdate, 3000);
insert into emp01 values (emp01_seq.nextval, '½Åº¸¶ó', sysdate, 500);
insert into emp01 values (emp01_seq.nextval, '±è¼º¹Î', sysdate, 1500);
insert into emp01 values (emp01_seq.nextval, 'È«Ã¢¿í', sysdate, 2000);

commit;