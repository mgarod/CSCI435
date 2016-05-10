import random as r

Location = [
	"Ukraine", "Croatia", "Nigeria",
	"Laos", "Nicaragua", "Colombia",
	"Turkey", "Russia", "North Korea",
	"Madagascar", "Afghanistan", "Libya",
	"Egypt", "Venezuela", "Mexico",
	"Armenia", "Azerbaijan", "Indonesia",
	"Philippines", "Taiwan", "Somalia"
]

Players = range(1001, 1010 + 1)

def get_other_player(player):
	while True:
		other = r.choice(Players)
		if other != player:
			return other

def get_loc():
	return "\'"+r.choice(Location)+"\'"

def make_date():
	mon = str(r.choice(range(1,13)))
	day = str(r.choice(range(1,28)))
	hr = str(r.choice(range(0,24)))
	m = str(r.choice(range(0,61)))
	sec = str(r.choice(range(0,61)))
	return "\'2015-"+mon+"-"+day+" "+hr+":"+m+":"+sec+"\'"


for i in Players:
	for j in range(r.randint(8,15)):
		other = get_other_player(i)
		print """INSERT INTO ATTACK VALUES({0}, {1}, {2},\n\t TO_TIMESTAMP({3}, \'YYYY-MM-DD HH24:MI:SS\'), {4});""".format(i, other, get_loc(), make_date(), r.choice([i, other]))
