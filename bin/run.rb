require_relative '../config/environment'
$prompt = TTY::Prompt.new
ActiveRecord::Base.logger = nil
require 'wikipedia'

def start
    system("clear")
    puts LINE_SQUIGGLES_MEDIUM.magenta
    puts ""
    puts LINE_SQUIGGLES_MEDIUM.magenta
    $prompt.select('Choose an action:', %w(Medium), help_color: :cyan, active_color: :magenta) do |menu|
        menu.choice "Create new account", -> { create_account } 
        menu.choice "Login to account", -> { login } 
        menu.choice "exit" 
    end
end

start
$current_user = nil
puts "Logging Out. Have a good day!"




