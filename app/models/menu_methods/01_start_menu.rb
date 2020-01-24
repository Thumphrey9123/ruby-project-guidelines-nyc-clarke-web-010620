def start
    system("clear")
    title2
    puts LINE_SQUIGGLES_MEDIUM.magenta
    puts ""
    puts LINE_SQUIGGLES_MEDIUM.magenta
    $prompt.select('Choose an action:', %w(Medium), help_color: :cyan, active_color: :magenta) do |menu|
        menu.choice "Create new account", -> { create_account } 
        menu.choice "Login to account", -> { login } 
        menu.choice "exit" 
    end
end