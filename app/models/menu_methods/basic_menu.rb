def start_menu
    # This is our main menu. After a user is established, they will navigate the program here.
    system("clear")
    $prompt.select('Choose an action:') do |menu|
        menu.choice "create new journal entry", -> { return create_entry } 
        menu.choice "browse by user", -> { return browse_by_user } 
        menu.choice "browse by rating", -> { return browse_by_rating } 
        menu.choice "browse by location", -> { return browse_by_location } 
        menu.choice "edit a journal entry", -> {return journal_display }
        menu.choice "delete a journal entry", -> { return delete_journal } 
        menu.choice "exit"
    end
end

def return_to_menu
    # This method gives the user an easy option to return to the main menu or exit the program.
    # It's mainly used at the end of certain lists to make it easy to go back.
    $prompt.select('Would you like to return to the main menu?') do |menu|
        menu.choice "Return to main menu", -> { return start_menu } 
        menu.choice "exit"
    end
end