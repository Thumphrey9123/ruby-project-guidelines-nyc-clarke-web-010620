def login
    user_name = $prompt.ask("Please enter your Username")
    user_password = $prompt.mask("Please enter your Password")
    # This logic sets a username if the credentials are correct. If not, username becomes nil and the method repeats.
    if User.all.any?{|user| user.username == user_name && user.password == user_password}
        username = User.all.find{|user| user.username == user_name}
    else
        username = nil 
    end

# This is the repeat logic.
    if username
        puts "Welcome back #{username.username}"
        $current_user = username
        start_menu
    else
        system("clear")
        puts "Username or password do not match system records. Please try again"
        login
    end

end