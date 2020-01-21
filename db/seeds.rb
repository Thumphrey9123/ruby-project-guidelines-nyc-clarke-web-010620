User.delete_all
Location.delete_all
JournalEntry.delete_all

tom = User.create(name: "Tom")
mike = User.create(name: "Mike")

ny = Location.create(name: "New York")
london = Location.create(name: "London")

j1 = JournalEntry.create(user: tom, location: ny)
j2 = JournalEntry.create

# j1.user = tom
# j1.location = ny
