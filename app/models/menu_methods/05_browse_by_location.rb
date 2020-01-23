def location_journals(location)
    # This displays a list of all journals based on the argument of a location (ideally a city)
    $prompt.select ("Journal Entries for #{location.name}") do |menu|
        journal_entry_menu(location, menu)
    end
    return_to_menu
end

def browse_by_location
    # This displays a list of all locations that own journals.
    # A location may exist in the DB, but if there are no journals assigned to it, it will not appear.
    # The method includes the option to navigate back to the main menu if the user changes their mind.
    $prompt.select("Choose a location:") do |menu|  
        Location.all.each do |location|
            if location.journal_entries.length > 0
                menu.choice "#{location.name}", -> {location_journals(location)}
            end
        end
        menu.choice "return to main menu", -> {start_menu}
        menu.choice "exit"
    end
end
