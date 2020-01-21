require_relative '../config/environment'
prompt = TTY::Prompt.new

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

def help
puts "create_entry"
puts "other_journals"
puts "browse_by_location"
puts "browse_by_rating"
puts "delete_journal"
end

prompt.select('Choose an action:') do |menu|
    
    menu.choice name: 'create new'
    menu.choice name: 'see other\'s'
    menu.choice name: 'browse locations by rating'
    menu.choice name: 'delete a journal'
    binding.pry
end

puts "El fin"
