def start_menu
    # This is our main menu. After a user is established, they will navigate the program here.
    system("clear")
    puts LINE_SQUIGGLES_MEDIUM.magenta
    puts ""
    puts LINE_SQUIGGLES_MEDIUM.magenta
    $prompt.select('Choose an action:') do |menu|
        menu.choice "Learn more about locations", -> { return more_info}
        menu.choice "My Journals", -> { return user_menu } 
        menu.choice "Browse journals", -> { return browse_menu } 
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
