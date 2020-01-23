def create_account
    user_name = $prompt.ask("Welcome to Prestige Worldwide! Please enter your prefered username")
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

