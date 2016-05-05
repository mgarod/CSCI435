CREATE TABLE Attack(
	attacker_id NUMBER NOT NULL,
	defender_id NUMBER NOT NULL,
	location VARCHAR2(30),
	time timestamp NOT NULL,
	victor_id NUMBER NOT NULL,
	CONSTRAINT fk_attacker FOREIGN KEY (attacker_id)
		REFERENCES Player (player_id)
		ON DELETE CASCADE,
	CONSTRAINT fk_defender FOREIGN KEY (defender_id)
		REFERENCES Player (player_id)
		ON DELETE CASCADE
);

INSERT INTO ATTACK VALUES(1001, 1002, 'Croatia',
	TO_TIMESTAMP('2016-01-01 18:10:15', 'YYYY-MM-DD HH24:MI:SS'), 1);