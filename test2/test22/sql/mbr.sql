drop table mbr;
drop sequence mbr_seq;
create table mbr(
	id varchar2(20) constraint mbr_id_pk primary key,
	pw varchar2(20) constraint mbr_pw_nn not null,
	name varchar2(20) constraint mbr_name_nn not null,
	tel char(11) constraint mbr_tel_uk unique,
	email varchar2(30) constraint mbr_email_uk unique,
	answer varchar2(50),
	lvl char(3) default 'L01' constraint mbr_lvl_fk references lvl(lvl)
);
create sequence mbr_seq;
--input data
insert into mbr values ('user1','test!111','ȸ��1','01012341111','user1@bitjeju.com','������','L01');
insert into mbr values ('user2','test!111','ȸ��2','01012341112','user2@bitjeju.com','������','L01');
insert into mbr values ('user3','test!111','ȸ��3','01012341113','user3@bitjeju.com','������','L01');
insert into mbr values ('user4','test!111','ȸ��4','01012341114','user4@bitjeju.com','������','L01');
insert into mbr values ('user5','test!111','ȸ��5','01012341115','user5@bitjeju.com','������','L01');
insert into mbr values ('user6','test!111','ȸ��6','01012341116','user6@bitjeju.com','������','L01');
insert into mbr values ('user7','test!111','ȸ��7','01012341117','user7@bitjeju.com','������','L01');
insert into mbr values ('user8','test!111','ȸ��8','01012341118','user8@bitjeju.com','������','L01');
insert into mbr values ('user9','test!111','ȸ��9','01012341119','user9@bitjeju.com','������','L01');
insert into mbr values ('user10','test!111','ȸ��10','01012341120','user10@bitjeju.com','������','L01');
insert into mbr values ('user11','test!111','ȸ��11','01012341121','user11@bitjeju.com','������','L03');
insert into mbr values ('user12','test!111','ȸ��12','01012341122','user12@bitjeju.com','������','L03');
insert into mbr values ('user13','test!111','ȸ��13','01012341123','user13@bitjeju.com','������','L03');
insert into mbr values ('user14','test!111','ȸ��14','01012341124','user14@bitjeju.com','������','L03');
insert into mbr values ('user15','test!111','ȸ��15','01012341125','user15@bitjeju.com','������','L03');
insert into mbr values ('user16','test!111','ȸ��16','01012341126','user16@bitjeju.com','������','L03');
insert into mbr values ('user17','test!111','ȸ��17','01012341127','user17@bitjeju.com','������','L03');
insert into mbr values ('user18','test!111','ȸ��18','01012341128','user18@bitjeju.com','������','L03');
insert into mbr values ('user19','test!111','ȸ��19','01012341129','user19@bitjeju.com','������','L03');
insert into mbr values ('user20','test!111','ȸ��20','01012341130','user20@bitjeju.com','������','L03');
insert into mbr values ('user21','test!111','ȸ��21','01012341131','user21@bitjeju.com','������','L03');
insert into mbr values ('user22','test!111','ȸ��22','01012341132','user22@bitjeju.com','������','L03');
insert into mbr values ('user23','test!111','ȸ��23','01012341133','user23@bitjeju.com','������','L03');
insert into mbr values ('user24','test!111','ȸ��24','01012341134','user24@bitjeju.com','������','L03');
insert into mbr values ('user25','test!111','ȸ��25','01012341135','user25@bitjeju.com','������','L03');
insert into mbr values ('user26','test!111','ȸ��26','01012341136','user26@bitjeju.com','������','L03');
insert into mbr values ('user27','test!111','ȸ��27','01012341137','user27@bitjeju.com','������','L03');
insert into mbr values ('user28','test!111','ȸ��28','01012341138','user28@bitjeju.com','������','L03');
insert into mbr values ('user29','test!111','ȸ��29','01012341139','user29@bitjeju.com','������','L03');
insert into mbr values ('user30','test!111','ȸ��30','01012341140','user30@bitjeju.com','������','L03');
insert into mbr values ('user31','test!111','ȸ��31','01012341141','user31@bitjeju.com','������','L03');
insert into mbr values ('user32','test!111','ȸ��32','01012341142','user32@bitjeju.com','������','L03');
insert into mbr values ('user33','test!111','ȸ��33','01012341143','user33@bitjeju.com','������','L03');
insert into mbr values ('user34','test!111','ȸ��34','01012341144','user34@bitjeju.com','������','L03');
insert into mbr values ('user35','test!111','ȸ��35','01012341145','user35@bitjeju.com','������','L03');
insert into mbr values ('user36','test!111','ȸ��36','01012341146','user36@bitjeju.com','������','L03');
insert into mbr values ('user37','test!111','ȸ��37','01012341147','user37@bitjeju.com','������','L03');
insert into mbr values ('user38','test!111','ȸ��38','01012341148','user38@bitjeju.com','������','L03');
insert into mbr values ('user39','test!111','ȸ��39','01012341149','user39@bitjeju.com','������','L03');
insert into mbr values ('user40','test!111','ȸ��40','01012341150','user40@bitjeju.com','������','L03');
insert into mbr values ('user41','test!111','ȸ��41','01012341151','user41@bitjeju.com','������','L03');
insert into mbr values ('user42','test!111','ȸ��42','01012341152','user42@bitjeju.com','������','L03');
insert into mbr values ('user43','test!111','ȸ��43','01012341153','user43@bitjeju.com','������','L03');
insert into mbr values ('user44','test!111','ȸ��44','01012341154','user44@bitjeju.com','������','L03');
insert into mbr values ('user45','test!111','ȸ��45','01012341155','user45@bitjeju.com','������','L03');
insert into mbr values ('user46','test!111','ȸ��46','01012341156','user46@bitjeju.com','������','L03');
insert into mbr values ('user47','test!111','ȸ��47','01012341157','user47@bitjeju.com','������','L03');
insert into mbr values ('user48','test!111','ȸ��48','01012341158','user48@bitjeju.com','������','L03');
insert into mbr values ('user49','test!111','ȸ��49','01012341159','user49@bitjeju.com','������','L03');
insert into mbr values ('user50','test!111','ȸ��50','01012341160','user50@bitjeju.com','������','L03');
insert into mbr values ('user51','test!111','ȸ��51','01012341161','user51@bitjeju.com','������','L03');
insert into mbr values ('user52','test!111','ȸ��52','01012341162','user52@bitjeju.com','������','L03');
insert into mbr values ('user53','test!111','ȸ��53','01012341163','user53@bitjeju.com','������','L03');
insert into mbr values ('user54','test!111','ȸ��54','01012341164','user54@bitjeju.com','������','L03');
insert into mbr values ('user55','test!111','ȸ��55','01012341165','user55@bitjeju.com','������','L03');
insert into mbr values ('user56','test!111','ȸ��56','01012341166','user56@bitjeju.com','������','L03');
insert into mbr values ('user57','test!111','ȸ��57','01012341167','user57@bitjeju.com','������','L03');
insert into mbr values ('user58','test!111','ȸ��58','01012341168','user58@bitjeju.com','������','L03');
insert into mbr values ('user59','test!111','ȸ��59','01012341169','user59@bitjeju.com','������','L03');
insert into mbr values ('user60','test!111','ȸ��60','01012341170','user60@bitjeju.com','������','L03');
insert into mbr values ('user61','test!111','ȸ��61','01012341171','user61@bitjeju.com','������','L03');
insert into mbr values ('user62','test!111','ȸ��62','01012341172','user62@bitjeju.com','������','L03');
insert into mbr values ('user63','test!111','ȸ��63','01012341173','user63@bitjeju.com','������','L03');
insert into mbr values ('user64','test!111','ȸ��64','01012341174','user64@bitjeju.com','������','L03');
insert into mbr values ('user65','test!111','ȸ��65','01012341175','user65@bitjeju.com','������','L03');
insert into mbr values ('user66','test!111','ȸ��66','01012341176','user66@bitjeju.com','������','L03');
insert into mbr values ('user67','test!111','ȸ��67','01012341177','user67@bitjeju.com','������','L03');
insert into mbr values ('user68','test!111','ȸ��68','01012341178','user68@bitjeju.com','������','L03');
insert into mbr values ('user69','test!111','ȸ��69','01012341179','user69@bitjeju.com','������','L03');
insert into mbr values ('user70','test!111','ȸ��70','01012341180','user70@bitjeju.com','������','L03');
insert into mbr values ('user71','test!111','ȸ��71','01012341181','user71@bitjeju.com','������','L03');
insert into mbr values ('user72','test!111','ȸ��72','01012341182','user72@bitjeju.com','������','L03');
insert into mbr values ('user73','test!111','ȸ��73','01012341183','user73@bitjeju.com','������','L03');
insert into mbr values ('user74','test!111','ȸ��74','01012341184','user74@bitjeju.com','������','L03');
insert into mbr values ('user75','test!111','ȸ��75','01012341185','user75@bitjeju.com','������','L03');
insert into mbr values ('user76','test!111','ȸ��76','01012341186','user76@bitjeju.com','������','L03');
insert into mbr values ('user77','test!111','ȸ��77','01012341187','user77@bitjeju.com','������','L03');
insert into mbr values ('user78','test!111','ȸ��78','01012341188','user78@bitjeju.com','������','L03');
insert into mbr values ('user79','test!111','ȸ��79','01012341189','user79@bitjeju.com','������','L03');
insert into mbr values ('user80','test!111','ȸ��80','01012341190','user80@bitjeju.com','������','L03');
insert into mbr values ('user81','test!111','ȸ��81','01012341191','user81@bitjeju.com','������','L03');
insert into mbr values ('user82','test!111','ȸ��82','01012341192','user82@bitjeju.com','������','L03');
insert into mbr values ('user83','test!111','ȸ��83','01012341193','user83@bitjeju.com','������','L03');
insert into mbr values ('user84','test!111','ȸ��84','01012341194','user84@bitjeju.com','������','L03');
insert into mbr values ('user85','test!111','ȸ��85','01012341195','user85@bitjeju.com','������','L03');
insert into mbr values ('user86','test!111','ȸ��86','01012341196','user86@bitjeju.com','������','L03');
insert into mbr values ('user87','test!111','ȸ��87','01012341197','user87@bitjeju.com','������','L03');
insert into mbr values ('user88','test!111','ȸ��88','01012341198','user88@bitjeju.com','������','L03');
insert into mbr values ('user89','test!111','ȸ��89','01012341199','user89@bitjeju.com','������','L03');
insert into mbr values ('user90','test!111','ȸ��90','01012341200','user90@bitjeju.com','������','L03');
insert into mbr values ('user91','test!111','ȸ��91','01012341201','user91@bitjeju.com','������','L03');
insert into mbr values ('user92','test!111','ȸ��92','01012341202','user92@bitjeju.com','������','L03');
insert into mbr values ('user93','test!111','ȸ��93','01012341203','user93@bitjeju.com','������','L03');
insert into mbr values ('user94','test!111','ȸ��94','01012341204','user94@bitjeju.com','������','L03');
insert into mbr values ('user95','test!111','ȸ��95','01012341205','user95@bitjeju.com','������','L03');
insert into mbr values ('user96','test!111','ȸ��96','01012341206','user96@bitjeju.com','������','L03');
insert into mbr values ('user97','test!111','ȸ��97','01012341207','user97@bitjeju.com','������','L03');
insert into mbr values ('user98','test!111','ȸ��98','01012341208','user98@bitjeju.com','������','L03');
insert into mbr values ('user99','test!111','ȸ��99','01012341209','user99@bitjeju.com','������','L03');
insert into mbr values ('user100','test!111','ȸ��100','01012341210','user100@bitjeju.com','������','L03');

commit;

select * from mbr;