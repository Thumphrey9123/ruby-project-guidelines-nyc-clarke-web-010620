def wiki_location_pull(location)
    # This method pulls from the API and populates URL and summary data
    if !location.url 
        page = Wikipedia.find( "#{location.name}" )
        location.update_attribute(:url, page.fullurl)
        location.update_attribute(:summary, page.summary)
    end
    location
end

def find_or_create_by_input
    # This prompts the user to name the location of their trip.
    user_location = $prompt.ask("Where would you like to journal about?")
    # it then calls the API method and updates their location's info
    l1 = Location.find_or_create_by(name: "#{user_location}")
    wiki_location_pull(l1)
end

def create_entry
    # This method gets all the info about a journal entry from the user.
    system("clear")
    name = $current_user.username
    puts "Hello #{name}"
    l1 = find_or_create_by_input
    # The find_or_create_by_input method is called to get a ready-made location with wiki info
    title = $prompt.ask("Enter a title:")
    review = $prompt.ask("Tell us about your trip there!")
    rating = $prompt.ask("How would you rate your trip?")

    puts "uploading your journal"
    # Then we put all the info together into a journal entry
    journal = JournalEntry.create(user: $current_user, location: l1, title: "#{title}", review: "#{review}", rating: "#{rating}")
    $current_user = User.find($current_user.id)
    return_to_menu
end





