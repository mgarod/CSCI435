"""
CREATE TABLE Attack(
	attacker_id NUMBER NOT NULL,
	defender_id NUMBER NOT NULL,
	time timestamp(0) NOT NULL,
	location VARCHAR2(30),
	victor_id NUMBER NOT NULL,
);
"""
import random as r
import data as d

for i in d.Players:
	for j in range(r.randint(8,15)):
		other = d.get_other_player(i)
		print """INSERT INTO ATTACK VALUES({0}, {1},\n\tTO_TIMESTAMP({2},\'YYYY-MM-DD HH24:MI:SS\'),\n\t{3}, {4});""".format(i, other, d.make_date(), d.get_wloc(), r.choice([i, other]))
