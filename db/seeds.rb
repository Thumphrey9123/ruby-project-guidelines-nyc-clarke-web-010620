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
astn = Location.create(name: "Austin")

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
j5 = JournalEntry.create(user: mike, location: mx, review: "Drank too much", title: "Tequila!", rating: 1)
j6 = JournalEntry.create(user: mike, location: it, review: "The gelato was delicious", title: "When in Rome.", rating: 4)
j7 = JournalEntry.create(user: mike, location: london, review: "London was kind of boring", title: "Crossing the Pond", rating: 2)
j8 = JournalEntry.create(user: mike, location: london, review: "Even better the second time", title: "Return Journey", rating: 5)
j9 = JournalEntry.create(user: tom, location: astn, review: "I love the people in this city. It's really special.", title: "Stay Weird", rating: 4)
j10 = JournalEntry.create(user: tom, location: mx, review: "This was a perfect trip.", title: "Magic in Mexico", rating: 5)

t1 = Tag.create(name: "Seafood", journal_entry: j5)
t2 = Tag.create(name: "Coastal", journal_entry: j1)
t3 = Tag.create(name: "Night Life", journal_entry: j1)
t4 = Tag.create(name: "Night Life", journal_entry: j9)
t5 = Tag.create(name: "Night Life", journal_entry: j2)

