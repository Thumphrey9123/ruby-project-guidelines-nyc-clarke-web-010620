def location_journals(location)
    $prompt.select ("Journal Entries for #{location}") do |menu|
        journal_entry_menu(location, menu)
    end
    return_to_menu
end

def browse_by_location
    $prompt.select("Choose a location:") do |menu|
       
        Location.all.each do |location|
            menu.choice "#{location.name}", -> {location_journals(location)}
        end
        menu.choice "return to main menu", -> {start_menu}
        menu.choice "exit"
    end
end
