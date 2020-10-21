DROP TABLE dept04;
DROP SEQUENCE dept04_seq;

CREATE TABLE dept04 (
	deptno NUMBER(2) PRIMARY KEY,
	dname VARCHAR2(15),
	loc VARCHAR2(15)
);

CREATE SEQUENCE dept04_seq;

--dummy
INSERT INTO dept04 VALUES (dept04_seq.nextval, '영업', '서울');
INSERT INTO dept04 VALUES (dept04_seq.nextval, '홍보', '서울');
INSERT INTO dept04 VALUES (dept04_seq.nextval, '디자인', '서울');
INSERT INTO dept04 VALUES (dept04_seq.nextval, '개발', '대전');

SELECT * FROM dept04;

COMMIT