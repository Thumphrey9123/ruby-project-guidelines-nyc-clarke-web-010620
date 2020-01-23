def user_menu
    # This is our main menu. After a user is established, they will navigate the program here.
    $prompt.select('Choose an action:') do |menu|
        menu.choice "Create new journal entry", -> { return create_entry } 
        menu.choice "Edit a journal entry", -> {return journal_display }
        menu.choice "Delete a journal entry", -> { return delete_journal } 
        menu.choice "Return to main menu", -> { return start_menu } 
        menu.choice "exit"
    end
end