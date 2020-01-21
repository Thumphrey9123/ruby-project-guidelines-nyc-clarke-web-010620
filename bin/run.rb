require_relative '../config/environment'
$prompt = TTY::Prompt.new

$prompt.select('Choose an action:') do |menu|
    menu.choice "create new", -> { return create_entry } 
    menu.choice "browse by user", -> { return browse_by_user } 
    menu.choice "browse by rating", -> { return browse_by_rating } 
    menu.choice "browse by location", -> { return browse_by_location } 
    menu.choice "delete a journal entry", -> { return delete_journal } 
    menu.choice "exit"
end


puts "El fin"
