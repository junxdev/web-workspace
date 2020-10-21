-- emp02_detail.sql
/* SQL> declare
  2  v_row emp02%rowtype;
  3  cur sys_refcursor;
  4  begin
  5  emp02_detail(10, cur);
  6  fetch cur into v_row;
  7  dbms_output.put_line(v_row.ename);
  8  close cur;
  9  end;
 10  /
*/
create or replace procedure emp02_detail
(p_empno in emp02.empno%type, cur out sys_refcursor)
is
begin
	open cur for select * from emp02 where empno = p_empno;
end;
/