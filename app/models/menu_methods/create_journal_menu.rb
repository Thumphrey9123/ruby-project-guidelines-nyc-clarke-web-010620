##Need to add logic for entering duplicate users or locations!!
def create_entry

system("clear")
user_name = self.name
puts "Hello #{user_name}"
user_location = $prompt.ask("Where would you like to journal about?")
l1 = Location.create(name: user_location)
JournalEntry.create(user: u1, location: l1)
end


