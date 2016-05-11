"""
CREATE TABLE Location(
	loction_id NUMBER NOT NULL PRIMARY KEY,
	l_name VARCHAR(20)
);
"""
import data as d

for i, v in enumerate(d.AllLocations):
	print """INSERT INTO Location VALUES({0}, {1});""".format(i+501, "\'"+v+"\'")