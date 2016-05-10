"""
CREATE TABLE Alliance(
	alliance_id NUMBER NOT NULL PRIMARY KEY,
	a_location VARCHAR2(30),
	a_name VARCHAR2(30),
);
"""
import data as d

for i, v in enumerate(range(10001, 10020 + 1)):
	print """INSERT INTO Alliance VALUES({}, {}, {});""".format(v, d.get_hloc(), "\'AllianceName_"+str(i+1)+"\'")