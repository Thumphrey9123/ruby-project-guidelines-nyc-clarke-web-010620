User.delete_all
Location.delete_all
JournalEntry.delete_all

tom = User.create(name: "Tom")
mike = User.create(name: "Mike")

ny = Location.create(name: "New York")
london = Location.create(name: "London")

j1 = JournalEntry.create(title: "NYC Review", user: tom, location: ny, review: "Kinda cold")
j2 = JournalEntry.create(title: "London up", user: tom, location: london, review: "Lots of tea")

# j1.user = tom
# j1.location = ny
