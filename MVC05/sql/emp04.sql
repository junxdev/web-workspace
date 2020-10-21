drop table emp04;
create table emp04 (
	sabun number primary key,
	name varchar2(30) not null,
	lvl number(1) default 0
);
insert into emp04 values (100, 'user1', 0);
insert into emp04 values (200, 'user1', 1);
insert into emp04 values (201, 'user1', 1);
insert into emp04 values (202, 'user1', 1);
insert into emp04 values (300, 'user1', 2);
insert into emp04 values (301, 'user1', 2);
insert into emp04 values (400, 'user1', 3);
insert into emp04 values (401, 'user1', 3);
insert into emp04 values (500, 'user1', 4);
commit;