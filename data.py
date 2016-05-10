import random as r

Players = range(1001, 1010 + 1)
Stores = range(11, 20 + 1)
Munitions = range(101, 110 + 1)

Location = [
	"Ukraine", "Croatia", "Nigeria",
	"Laos", "Nicaragua", "Colombia",
	"Turkey", "Russia", "North Korea",
	"Madagascar", "Afghanistan", "Libya",
	"Egypt", "Venezuela", "Mexico",
	"Armenia", "Azerbaijan", "Indonesia",
	"Philippines", "Taiwan", "Somalia"
]

def get_sid():
	return r.choice(Stores)

def get_mid():
	return r.choice(Munitions)

def make_date():
	mon = str(r.choice(range(1,13)))
	day = str(r.choice(range(1,28)))
	hr = str(r.choice(range(0,24)))
	m = str(r.choice(range(0,60)))
	sec = str(r.choice(range(0,60)))
	return "\'2015-"+mon+"-"+day+" "+hr+":"+m+":"+sec+"\'"

def get_other_player(player):
	while True:
		other = r.choice(Players)
		if other != player:
			return other

def make_date():
	mon = str(r.choice(range(1,13)))
	day = str(r.choice(range(1,28)))
	hr = str(r.choice(range(0,24)))
	m = str(r.choice(range(0,60)))
	sec = str(r.choice(range(0,60)))
	return "\'2015-"+mon+"-"+day+" "+hr+":"+m+":"+sec+"\'"


def get_loc():
	return "\'"+r.choice(Location)+"\'"