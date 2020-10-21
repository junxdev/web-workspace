DROP TABLE dept04;
DROP SEQUENCE dept04_seq;

CREATE TABLE dept04 (
	deptno NUMBER(2) PRIMARY KEY,
	dname VARCHAR2(15),
	loc VARCHAR2(15)
);

CREATE SEQUENCE dept04_seq;

--dummy
INSERT INTO dept04 VALUES (dept04_seq.nextval, '����', '����');
INSERT INTO dept04 VALUES (dept04_seq.nextval, 'ȫ��', '����');
INSERT INTO dept04 VALUES (dept04_seq.nextval, '������', '����');
INSERT INTO dept04 VALUES (dept04_seq.nextval, '����', '����');

SELECT * FROM dept04;

COMMIT