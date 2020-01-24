def create_account
    # This is our create account screen. It accepts a return from the user of their desired username and password.
    # The logic here is connected to the User class, which requires that a username is unique (has not been used before)
    # and that both un and pw exist (they can't be left blank). If these requirements are not met, the "else" statement
    # will be displayed and the method will loop itself until the user submits appropriately.
    user_name = $prompt.ask("Welcome to !!***PRESTIGE WORLDWIDE***!! Please enter your prefered username")
    user_password = $prompt.ask("Please enter a password")
    if User.create(username: "#{user_name}", password: "#{user_password}").valid?
        new_user = User.create(username: "#{user_name}", password: "#{user_password}")
        $current_user = User.last
        start_menu
    else
        system("clear")
        puts "Error! Username or Password are invalid.".red
        create_account
    end
end

