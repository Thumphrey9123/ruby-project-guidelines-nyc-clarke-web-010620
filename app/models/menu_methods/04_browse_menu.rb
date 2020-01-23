def browse_menu
    $prompt.select('Choose an action:') do |menu|
        menu.choice "Browse journals by user", -> { return browse_by_user } 
        menu.choice "Browse journals by rating", -> { return browse_by_rating } 
        menu.choice "Browse journals by location", -> { return browse_by_location }
        menu.choice "Return to main menu", -> { return start_menu } 
        menu.choice "exit"
    end
end