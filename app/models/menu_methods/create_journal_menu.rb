##Need to add logic for entering duplicate users or locations!!
def wiki_location_pull(location)
    
    if !location.url 
        page = Wikipedia.find( "#{location.name}" )
        location.update_attribute(:url, page.fullurl)
        location.update_attribute(:summary, page.summary)
    end
    location
end

def find_or_create_by_input

    user_location = $prompt.ask("Where would you like to journal about?")
    
    l1 = Location.find_or_create_by(name: "#{user_location}")
    wiki_location_pull(l1)
end



def create_entry
    system("clear")
    name = $current_user.username
    puts "Hello #{name}"
    l1 = find_or_create_by_input
    binding.pry
    title = $prompt.ask("Enter a title:")
    review = $prompt.ask("Tell us about your trip there!")
    rating = $prompt.ask("How would you rate your trip?")

    puts "uploading your journal"

    journal = JournalEntry.create(user: $current_user, location: l1, title: "#{title}", review: "#{review}", rating: "#{rating}")
    $current_user = User.find($current_user.id)
    return_to_menu
end





