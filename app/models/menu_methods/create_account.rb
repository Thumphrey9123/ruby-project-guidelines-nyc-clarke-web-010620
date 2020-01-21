def create_account
    user_name = $prompt.ask("Welcome to Prestige Worldwide! Please enter your prefered username")
    username = User.create(username: "#{user_name}")
    if username.id
        username.name = $prompt.ask("Please enter your full name.")
        $current_user = username
        binding.pry
        start_menu
    else
        system("clear")
        puts "Username unavailable"
        create_account
    end
 end