"""
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
"""

import random as r

Players = range(1001, 1010 + 1)
Stores = range(11, 20 + 1)
Munitions = range(101, 110 + 1)

def get_p():
	return r.choice(Players)

def get_s():
	return r.choice(Stores)

def get_m()):
	return r.choice(Munitions)

def make_date():
	mon = str(r.choice(range(1,13)))
	day = str(r.choice(range(1,28)))
	hr = str(r.choice(range(0,24)))
	m = str(r.choice(range(0,60)))
	sec = str(r.choice(range(0,60)))
	return "\'2015-"+mon+"-"+day+" "+hr+":"+m+":"+sec+"\'"

def get_q():
	return r.randint(1,100)