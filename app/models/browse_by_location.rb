def location_journals(location)
    $prompt.select ("Journal Entries for #{location}") do |menu|
        location.journal_entries.each do |entry|
            menu.choice "#{entry.title}", -> do
                system ("clear")
                puts "#{entry.title}: #{entry.review}"
            end
        end
    end
end

def browse_by_location
    $prompt.select("Choose a location:") do |menu|
        Location.all.each do |location|
            menu.choice "#{location.name}", -> {location_journals(location)}
        end
    end
end
