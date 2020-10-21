drop table dept01;
drop sequence dept01_seq;

create table dept01(
	deptno number primary key,
	id varchar2(50) unique not null,
	pw varchar2(50) not null,
	name varchar2(50) not null,
	grade number default 0
);

create sequence dept01_seq;

insert into dept01 values (dept01_seq.nextval, 'admin', 'admin', '사장', 5);
insert into dept01 values (dept01_seq.nextval, 'master', 'master', '관리자', 4);
insert into dept01 values (dept01_seq.nextval, 'guest', 'guest', '손님', 2);

commit;