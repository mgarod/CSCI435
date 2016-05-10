CREATE TABLE SupplyDrop(
	p_id NUMBER NOT NULL,
	s_id NUMBER NOT NULL,
	m_id NUMBER NOT NULL,
	order_time timestamp(0) NOT NULL,
	quantity NUMBER NOT NULL,
	CONSTRAINT pk_supplydrop PRIMARY KEY (p_id, s_id, m_id, order_time),
	CONSTRAINT fk_pid FOREIGN KEY (p_id)
		REFERENCES Player (player_id)
		ON DELETE CASCADE,
	CONSTRAINT fk_sid FOREIGN KEY (s_id)
		REFERENCES Store (store_id)
		ON DELETE CASCADE,
	CONSTRAINT fk_mid FOREIGN KEY (m_id)
		REFERENCES Munition (munition_id)
		ON DELETE CASCADE
);

INSERT INTO SupplyDrop VALUES(1001, 3, 5,
	TO_TIMESTAMP('2016-01-01 18:10:15', 'YYYY-MM-DD HH24:MI:SS'), 4);