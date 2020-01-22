User.delete_all
Location.delete_all
JournalEntry.delete_all

tom = User.create(password: "tom", username: "timmytom")
mike = User.create(password: "Mike", username: "diaz26")

ny = Location.create(name: "New York")
london = Location.create(name: "London")
tn = Location.create(name: "Nashville")
sf = Location.create(name: "San Francisco")
mx = Location.create(name: "Cancun")
it = Location.create(name: "Rome")

j1 = JournalEntry.create(user: tom, location: ny, review: "Kinda cold", title: "My trip to New York", rating: 4)
j2 = JournalEntry.create(user: tom, location: london, review: "Lots of tea", title: "Crossing the Pond", rating: 5)
j3 = JournalEntry.create(user: tom, location: tn, review: "Got some hot chicken", title: "Gettin' country", rating: 5)
j4 = JournalEntry.create(user: tom, location: sf, review: "TechTechTech", title: "Journey to The Valley", rating: 3)
j5 = JournalEntry.create(user: mike, location: mx, review: "Drank too much", title: "Tequila!", rating: 5)
j6 = JournalEntry.create(user: mike, location: it, review: "Too much gelato", title: "When in Rome.", rating: 4)
j7 = JournalEntry.create(user: mike, location: london, review: "Lots of tea", title: "Crossing the Pond", rating: 2)

# j1.user = tom
# j1.location = ny
