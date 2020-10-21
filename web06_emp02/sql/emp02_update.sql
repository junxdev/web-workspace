-- emp02_update.sql
/*
declare
	result binary_integer;
begin
	emp02_update(result, '¿ÁÁÖÇö', 5500, 4);
	dbms_output.put_line('result : ' || result);
end;
/
*/
create or replace procedure emp02_update
(
	result out binary_integer,
	p_ename emp02.ename%type,
	p_pay emp02.pay%type,
	p_empno emp02.empno%type
)
is
begin
	update emp02 set ename = p_ename, pay = p_pay where empno = p_empno;
	result := sql%rowcount;
	commit;
end;
/