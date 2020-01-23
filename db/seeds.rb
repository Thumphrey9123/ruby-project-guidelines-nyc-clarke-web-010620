User.delete_all
Location.delete_all
JournalEntry.delete_all
require 'wikipedia'

tom = User.create(password: "timmytom", username: "tom")
mike = User.create(password: "Mike", username: "diaz26")

ny = Location.create(name: "New York City")
london = Location.create(name: "London")
tn = Location.create(name: "Nashville")
sf = Location.create(name: "San Francisco")
mx = Location.create(name: "Cancun")
it = Location.create(name: "Rome")

def wiki_location
    Location.all.map do|location|
        page = Wikipedia.find( "#{location.name}" )
        location.update_attribute(:url, page.fullurl)
        location.update_attribute(:summary, page.summary)
    end
end
wiki_location

j1 = JournalEntry.create(user: tom, location: ny, review: "Kinda cold", title: "My trip to New York", rating: 4)
j2 = JournalEntry.create(user: tom, location: london, review: "Lots of tea", title: "Crossing the Pond", rating: 5)
j3 = JournalEntry.create(user: tom, location: tn, review: "Got some hot chicken", title: "Gettin' country", rating: 5)
j4 = JournalEntry.create(user: tom, location: sf, review: "TechTechTech", title: "Journey to The Valley", rating: 3)
j5 = JournalEntry.create(user: mike, location: mx, review: "Drank too much", title: "Tequila!", rating: 5)
j6 = JournalEntry.create(user: mike, location: it, review: "Too much gelato", title: "When in Rome.", rating: 4)
j7 = JournalEntry.create(user: mike, location: london, review: "Lots of tea", title: "Crossing the Pond", rating: 2)

t1 = Tag.create(name: "Seafood")
t2 = Tag.create(name: "Coastal")
t3 = Tag.create(name: "Night Life")
