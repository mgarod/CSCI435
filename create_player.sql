CREATE TABLE Player(
	player_id NUMBER NOT NULL PRIMARY KEY,
	fname VARCHAR2(20) NOT NULL,
	lname VARCHAR2(20) NOT NULL,
	username VARCHAR2(30) NOT NULL UNIQUE,
	funds NUMBER(20,2),
	soldiers NUMBER,
	tanks NUMBER,
	jets NUMBER,
	allied_with NUMBER
);

INSERT INTO Player VALUES(1001, 'Mark', 'Wahlberg', 'mwhalberg87',
	64000.00, 50, 15, 25, 10001);
INSERT INTO Player VALUES(1002, 'Michael', 'Garod', 'mgarod89',
	90000.00, 60, 30, 5, 10002);
INSERT INTO Player VALUES(1003, 'Odysseas', 'Katsougrakis', 'odykat9000',
	75000.00, 20, 12, 30, 10003);
INSERT INTO Player VALUES(1004, 'Zouhair', 'Khallaf', 'zkhallaf1234',
	80000.00, 20, 12, 30, 10004);
INSERT INTO Player VALUES(1005, 'Arnold', 'Schwarzenegger', 'terminator91',
	20000.00, 15, 9, 4, 10005);
INSERT INTO Player VALUES(1006, 'Sylvester', 'Stallone', 'ramb0',
	35000.00, 42, 20, 30, 10006);
INSERT INTO Player VALUES(1007, 'Jackie', 'Chan', 'superc0p',
	68000.00, 75, 25, 5, 10007);
INSERT INTO Player VALUES(1008, 'Keanu', 'Reeves', 'the1',
	32000.00, 25, 10, 8, 10008);
INSERT INTO Player VALUES(1009, 'Samuel', 'Jackson', 'the_one_with_BMF_on_it',
	14000.00, 7, 6, 0, 10009);
INSERT INTO Player VALUES(1010, 'Liam', 'Neeson', 'I_have_a_set_of_skills',
	4000.00, 11, 0, 3, 10010);
