require_relative '../config/environment'
$prompt = TTY::Prompt.new

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

def browse_by_user
    $prompt.select ('Choose a user:') do |menu|
        User.all.each do |user|
            menu.choice "#{user.name}"
        end
    end
end

def browse_by_rating
end

def browse_by_location
end

def delete_journal
end

# def help
# puts "create_entry"
# puts "other_journals"
# puts "browse_by_location"
# puts "browse_by_rating"
# puts "delete_journal"
# end

    $prompt.select('Choose an action:') do |menu|
        menu.choice "create new", -> { return create_entry } 
        menu.choice "browse by user", -> { return browse_by_user } 
        menu.choice "browse by rating", -> { return create_entry } 
        menu.choice "browse by location", -> { return create_entry } 
        menu.choice "delete a journal entry", -> { return create_entry } 
        menu.choice "exit"
    end


puts "El fin"
