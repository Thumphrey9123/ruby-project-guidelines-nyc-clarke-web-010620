require_relative '../config/environment'
$prompt = TTY::Prompt.new


def start
system("clear")

i=0

    while i<1
        
        $prompt.select('Choose an action:') do |menu|
            menu.choice "Create new account", -> { create_account } 
            menu.choice "Login to account", -> { login } 
            menu.choice "exit", -> {return i+=1} 
        end

        i+=1
    end
end

start
puts "El fin"
