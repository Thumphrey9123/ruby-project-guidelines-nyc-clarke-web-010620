#seeds the attributes from the Wiki API to the locations database.
def wiki_location_pull(location)
    
    if !location.url 
        page = Wikipedia.find( "#{location.name}" )
        location.update_attribute(:url, page.fullurl)
        location.update_attribute(:summary, page.summary)
    end
    location
end
#finds or creates a new Location instance if it has a wiki page associated with it.
def find_or_create_by_input

    user_location = $prompt.ask("Where would you like to journal about?")
    page = Wikipedia.find( "#{user_location}" )
    if page.summary
        l1 = Location.find_or_create_by(name: "#{user_location}")
        wiki_location_pull(l1) #calls method to add wiki info to Location instance.
    else #if there is no wiki page it will return an error.
        puts"Error! Location name may be misspelled, please try again.".red
        find_or_create_by_input
    end
end

def create_entry
    system("clear")
    name = $current_user.username
    puts "Hello #{name}"
    l1 = find_or_create_by_input
    #Info is collected to create a journal entry.
    title = $prompt.ask("Enter a title:")
    review = $prompt.ask("Tell us about your trip there!")
    rating = $prompt.ask("How would you rate your trip?")

    puts "uploading your journal"

    journal = JournalEntry.create(user: $current_user, location: l1, title: "#{title}", review: "#{review}", rating: "#{rating}")
    #user is updated so that menu options are fresh with the newly created journal
    $current_user = User.find($current_user.id)
    return_to_menu
end





