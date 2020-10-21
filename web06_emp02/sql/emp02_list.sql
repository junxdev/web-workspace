-- emp02_list.sql
create or replace procedure emp02_list
(cur out sys_refcursor)
is
begin
	open cur for select * from emp02;
end;
/