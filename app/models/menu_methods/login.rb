def login
    user_name = $prompt.ask("Please enter your Username")
    if User.all.any?{|user| user.username == user_name}
        username = User.all.find{|user| user.username == user_name}
    else
        username = nil 
    end


    if username
        puts "Welcome back #{username.name}"
        $current_user = username
        start_menu
    else
        system("clear")
        puts "Username does not match any records. Please try again"
        login
    end

end