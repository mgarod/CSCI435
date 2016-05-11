import random as r

WarLocation = [
	"Ukraine", "Croatia", "Nigeria",
	"Laos", "Nicaragua", "Colombia",
	"Turkey", "Russia", "North Korea",
	"Madagascar", "Afghanistan", "Libya",
	"Egypt", "Venezuela", "Angola",
	"Armenia", "Azerbaijan", "Indonesia",
	"Philippines", "Taiwan", "Somalia"
]

HomeLocation = [
	"United States", "France", "Germany",
	"Japan", "China", "United Kingdom",
	"Australia", "Brazil", "Mexico",
	"Canada", "Italy", "Switzerland",
	"Singapore", "New Zealand", "South Africa",
	"Israel", "India", "South Korea"
]

AllLocations = WarLocation + HomeLocation

Players = range(1001, 1010 + 1)
Stores = range(11, 20 + 1)
Munitions = range(101, 110 + 1)
Locations = range(501, 501+len(AllLocations))

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


def get_wloc():
	return "\'"+r.choice(WarLocation)+"\'"


def get_hloc():
	return "\'"+r.choice(HomeLocation)+"\'"


def get_anyloc():
	return "\'"+r.choice(AllLocations)+"\'"

def get_wloc_id():
	return r.choice(Locations[:len(WarLocation))])

def get_hloc_id():
	return r.choice(Locations[len(WarLocation):])

def get_anyloc_id():
	return r.choice(Locations)