##Need to add logic for entering duplicate users or locations!!
def create_entry

system("clear")
name = $current_user.name
puts "Hello #{name}"
user_location = $prompt.ask("Where would you like to journal about?")
l1 = find_or_create_by_name(user_location)
journal = JournalEntry.create(user: $current_user, location: l1)
journal.title = $prompt.ask("Enter a title:")
journal.review = $prompt.ask("Tell us about your trip there!")
journal.rating = $prompt.ask("How would you rate your trip?")
puts "uploading your journal"

return_to_menu
end

def find_or_create_by_name(user_location)
    if Location.all.any?{|location| location.name == user_location}
        return Location.all.find{|location| location.name == user_location}
    else
        return Location.create(name: user_location)
    end
end


# start_menu