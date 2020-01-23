def start_menu
    # This is our main menu. After a user is established, they will navigate the program here.
    system("clear")
    puts LINE_SQUIGGLES_MEDIUM.magenta
    puts ""
    puts LINE_SQUIGGLES_MEDIUM.magenta
    $prompt.select('Choose an action:') do |menu|
        menu.choice "Learn more about locations", -> { return more_info}
        menu.choice "Create new journal entry", -> { return create_entry } 
        menu.choice "Browse journals by user", -> { return browse_by_user } 
        menu.choice "Browse journals by rating", -> { return browse_by_rating } 
        menu.choice "Browse journals by location", -> { return browse_by_location } 
        menu.choice "Edit a journal entry", -> {return journal_display }
        menu.choice "Delete a journal entry", -> { return delete_journal } 
        menu.choice "exit"
    end
end

def return_to_menu
    # This method gives the user an easy option to return to the main menu or exit the program.
    # It's mainly used at the end of certain lists to make it easy to go back.
    puts LINE_SQUIGGLES_MEDIUM.magenta
    puts ""
    puts LINE_SQUIGGLES_MEDIUM.magenta
    $prompt.select('Would you like to return to the main menu?') do |menu|
        menu.choice "Return to main menu", -> { return start_menu } 
        menu.choice "exit"
    end
end