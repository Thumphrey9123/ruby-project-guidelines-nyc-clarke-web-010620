def location_journals(location)
    $prompt.select ("Journal Entries for #{location}") do |menu|
        journal_entry_menu(location, menu)
    end
end

def browse_by_location
    $prompt.select("Choose a location:") do |menu|
        Location.all.each do |location|
            menu.choice "#{location.name}", -> {location_journals(location)}
        end
    end
end