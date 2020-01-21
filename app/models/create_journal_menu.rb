##Need to add logic for entering duplicate users or locations!!
def create_entry
    puts "Input Name:"
    user_name = gets.chomp
    u1 = User.create(name: user_name)

    puts"Where have you been?"
    user_location = gets.chomp
    l1 = Location.create(name: user_location)
    JournalEntry.create(user: u1, location: l1)
end