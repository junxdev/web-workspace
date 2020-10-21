-- emp02_delete.sql
/*
declare
	result binary_integer;
begin
	emp02_update(result, 4);
	dbms_output.put_line('result : ' || result);
end;
/
*/
create or replace procedure emp02_delete
(
	result out binary_integer,
	p_empno emp02.empno%type
)
is
begin
	delete from emp02 where empno = p_empno;
	result := sql%rowcount;
	commit;
end;
/