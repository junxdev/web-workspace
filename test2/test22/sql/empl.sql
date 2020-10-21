drop table empl;
create table empl(
	eno number(4) constraint empl_eno_pk primary key,
	name varchar2(20) constraint empl_name_nn not null,
	pw varchar2(20) constraint empl_pw_nn not null,
	tel char(11) constraint empl_tel_uk unique,
	email varchar2(30) constraint empl_email_uk unique,
	answer varchar2(50),
	hdate date default sysdate,
	dno char(3) constraint empl_dno_fk references dpt(dno)
);

--input data
insert into empl values (1001,'������','test!111','01043211111','empl1001@bitjeju.com','������','2020-1-1','D01');
insert into empl values (1002,'������','test!111','01043211112','empl1002@bitjeju.com','������','2020-3-1','D01');
insert into empl values (1003,'������','test!111','01043211113','empl1003@bitjeju.com','������','2020-6-1','D02');
insert into empl values (1004,'������','test!111','01043211114','empl1004@bitjeju.com','������','2020-8-1','D02');
insert into empl values (1005,'������','test!111','01043211115','empl1005@bitjeju.com','������','2020-1-1','D02');
insert into empl values (1006,'ȸ����','test!111','01043211116','empl1006@bitjeju.com','������','2020-3-1','D05');
insert into empl values (1007,'�����','test!111','01043211117','empl1007@bitjeju.com','������','2020-6-1','D04');
insert into empl values (1008,'���μ�','test!111','01043211118','empl1008@bitjeju.com','������','2020-8-1','D03');
insert into empl values (1009,'������','test!111','01043211119','empl1009@bitjeju.com','������','2020-1-1','D03');
insert into empl values (1010,'Ȳ����','test!111','01043211120','empl1010@bitjeju.com','������','2020-3-1','D03');
insert into empl values (1011,'������','test!111','01043211121','admin@bitjeju.com','������','2020-1-1','D06');

commit;

select * from empl;