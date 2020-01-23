def browse_by_rating
    # This displays 
    $prompt.select('Choose a location') do |menu|
        has_journal = Location.all.select{|location| location.journal_entries.length > 0}
        locations = has_journal.sort_by { |location| location.average_rating}.reverse
        locations.each do |location|
            menu.choice "#{location.name} average rating: #{location.average_rating}", -> {location_journals(location)}
        end
    end 
end

def journal_entry_menu(object, menu)
    # This helper method pulls up all journal entries associated with the first argument ("object")
    object.journal_entries.each do |entry|    
        menu.choice "#{entry.title}", -> do
            system ("clear")
            puts "#{entry.title}: #{entry.review}"
        end
    end  
end     




