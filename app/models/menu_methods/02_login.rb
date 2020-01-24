def login
# This is the repeat logic.
    username = get_login
    if username 
        puts "Welcome back #{username.username}"
        $current_user = username
        start_menu
    else
        system("clear")
        puts "Username or password do not match system records. Please try again".red
        login
    end
end

def get_login
    # This method asks for a username and password input. It checks to see if the inputs are valid and loops if not.
    # We added required true to prevent input of space or empty, which causes an error in the TTY function
    user_name = $prompt.ask("Please enter your Username", required: true)
    user_password = $prompt.mask("Please enter your Password", required: true)
    if User.all.any?{|user| user.username == user_name && user.password == user_password}
        username = User.all.find{|user| user.username == user_name}
    else
        username = nil
    end
end