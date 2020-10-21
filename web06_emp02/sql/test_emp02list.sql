--
declare 
	type emp02row is record(
		p_empno emp02.empno%type,
		p_ename emp02.ename%type,
		p_hiredate emp02.hiredate%type,
		p_pay emp02.pay%type
	);
	v_row emp02row;
	cur sys_refcursor;
begin
	emp02_list(cur);
	loop
		fetch cur into v_row ;
		exit when cur%notfound;
		dbms_output.put_line(v_row.p_empno || ', ' 
				||v_row.p_ename || ', ' 
				||v_row.p_hiredate || ', ' 
				||v_row.p_pay);
	end loop;
	close cur;
end;
/