require_relative '../config/environment'
$prompt = TTY::Prompt.new


def start
    system("clear")
    $prompt.select('Choose an action:') do |menu|
        menu.choice "Create new account", -> { create_account } 
        menu.choice "Login to account", -> { login } 
        menu.choice "exit", -> {return i+=1} 
    end
end

start
$current_user = nil
puts "Logging Out. Have a good day!"
