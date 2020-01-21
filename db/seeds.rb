User.delete_all
Location.delete_all
JournalEntry.delete_all

tom = User.create(name: "Tom")
mike = User.create(name: "Mike")

ny = Location.create(name: "New York")
london = Location.create(name: "London")

<<<<<<< HEAD
j1 = JournalEntry.create(user: tom, location: ny, review: "Kinda cold", title: "My trip to New York", rating: 4)
j2 = JournalEntry.create(user: tom, location: london, review: "Lots of tea", title: "Crossing the Pond", rating: 5)
=======
j1 = JournalEntry.create(title: "NYC Review", user: tom, location: ny, review: "Kinda cold")
j2 = JournalEntry.create(title: "London up", user: tom, location: london, review: "Lots of tea")
>>>>>>> f1f4ec461f2b761914a5629c140d114720c50aaf

# j1.user = tom
# j1.location = ny
