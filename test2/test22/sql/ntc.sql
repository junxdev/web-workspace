drop table ntc;
drop sequence ntc_seq;
create table ntc(
	nno number constraint ntc_nno_pk primary key,
	ntitle varchar2(300),
	ntype varchar2(30) check (ntype in ('���Ͱ���','��������','��Ÿ����')),
	nbody varchar2(2000),
	ndate date default sysdate,
	ndateby date default sysdate+365,
	cno number constraint ntc_cno_fk references crs(cno),
	eno number constraint ntc_eno_fk references empl(eno),
	nurl varchar2(300)
);

create sequence ntc_seq;
--input data
insert into ntc values (ntc_seq.nextval,'���ּ��� ���� �ȳ�','���Ͱ���','���ּ��� ���� �ȳ�','2020-6-1','2021-06-01','','1003','');
insert into ntc values (ntc_seq.nextval,'���ּ��� ã�ƿ��ô� �� �ȳ�','���Ͱ���','���ּ��� ã�ƿ��ô� �� �ȳ�','2020-6-1','2021-06-01','','1003','');
insert into ntc values (ntc_seq.nextval,'���� �湮 �̺�Ʈ','���Ͱ���','���� �湮 �̺�Ʈ','2020-6-1','2021-06-01','','1003','');
insert into ntc values (ntc_seq.nextval,'�������������� ��� �ڹ�(JAVA)����SW������ �缺����','��������','�������������� ��� �ڹ�(JAVA)����SW������ �缺����','2020-6-1','2021-06-01','1','1003','');
insert into ntc values (ntc_seq.nextval,'�������������� ��� Framework ���� ������ �缺����','��������','�������������� ��� Framework ���� ������ �缺����','2020-6-1','2021-06-01','2','1004','');
insert into ntc values (ntc_seq.nextval,'����������������� ���ձ���� Ȱ����sw �� ������ �缺���� A','��������','����������������� ���ձ���� Ȱ����sw �� ������ �缺���� A','2020-6-1','2021-06-01','3','1005','');
insert into ntc values (ntc_seq.nextval,'�������������� ��� �ڹ�(JAVA)����SW������ �缺���� A','��������','�������������� ��� �ڹ�(JAVA)����SW������ �缺���� A','2020-8-1','2021-08-01','4','1003','');
insert into ntc values (ntc_seq.nextval,'�������������� ��� �ڹ�(JAVA)����SW������ �缺���� B','��������','�������������� ��� �ڹ�(JAVA)����SW������ �缺���� B','2020-8-1','2021-08-01','5','1004','');
insert into ntc values (ntc_seq.nextval,'�������������� ��� �ڹ�(JAVA)����SW������ �缺���� C','��������','�������������� ��� �ڹ�(JAVA)����SW������ �缺���� C','2020-8-1','2021-08-01','6','1005','');

commit;

select * from ntc;