-- emp02_list.sql
create or replace procedure emp02_list
(cur out sys_refcursor, cur2 out sys_refcursor)
is
begin
	open cur for select * from emp02;
	open cur2 for select * from dept;
end;
/