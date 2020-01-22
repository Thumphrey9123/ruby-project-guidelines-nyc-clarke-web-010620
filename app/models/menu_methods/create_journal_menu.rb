##Need to add logic for entering duplicate users or locations!!
def create_entry

system("clear")
name = $current_user.username
puts "Hello #{name}"
user_location = $prompt.ask("Where would you like to journal about?")
l1 = Location.find_or_create_by(name: "#{user_location}")
title = $prompt.ask("Enter a title:")
review = $prompt.ask("Tell us about your trip there!")
rating = $prompt.ask("How would you rate your trip?")
puts "uploading your journal"
journal = JournalEntry.create(user: $current_user, location: l1, title: "#{title}", review: "#{review}", rating: "#{rating}")
$current_user = User.find($current_user.id)
return_to_menu
end

# def find_or_create_by_name(user_location)
#     if Location.all.any?{|location| location.name == user_location}
#         return Location.all.find{|location| location.name == user_location}
#     else
#         return Location.create(name: user_location)
#     end
# end


# start_menu