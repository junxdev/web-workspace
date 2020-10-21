-- emp02_insert procedure
-- ex. emp02insert(10, '박지성', 10000);
create or replace procedure emp02_insert
(v_empno emp02.empno%type,
v_ename emp02.ename%type,
v_pay emp02.pay%type)
is
begin
	insert into emp02 values (v_empno, v_ename, sysdate, v_pay);
	commit;
end;
/