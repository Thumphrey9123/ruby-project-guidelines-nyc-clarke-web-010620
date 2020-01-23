def create_entry
    # Users will invoke this method when writing a journal entry. It takes in a bunch of inputs and turns them into aspects of an object.
    # We refresh the current_user variable so that the new journal will be reflected in their list.
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

