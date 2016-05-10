"""
CREATE TABLE SupplyDrop(
	p_id NUMBER NOT NULL,
	s_id NUMBER NOT NULL,
	m_id NUMBER NOT NULL,
	order_time timestamp(0) NOT NULL,
	quantity NUMBER NOT NULL,
);
"""
import random as r
import data as d

def get_q():
	return r.randint(1,100)

for i in d.Players:
	for j in range(r.randint(15,30)):
		print """INSERT INTO SUPPLYDROP VALUES({0}, {1}, {2},\n\tTO_TIMESTAMP({2},\'YYYY-MM-DD HH24:MI:SS\'), {3}, {4});""".format(i, d.get_sid(), d.get_mid(), d.make_date(), get_q())






















