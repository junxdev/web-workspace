drop table bbs01;
drop sequence bbs01_seq;

create table bbs01(
	num number primary key,
	title varchar2(30) default '제목 없음',
	write_date date,
	id varchar2(30),
	content varchar2(2000),
	ref number,
	reply_num number,
	reply_lv number
);

create sequence bbs01_seq;
--dummy data

commit;