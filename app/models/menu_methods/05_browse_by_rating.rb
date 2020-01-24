def browse_by_rating
    # This displays a list of locations that we have arranged by the average rating given by their journal entries.
    $prompt.select('Choose a location') do |menu|
        # ratings_sort arranges the list to put the highest rating on top.
        # eligible_locations means only the locations that have journal entries
        locations = ratings_sort(eligible_locations)
        locations.each do |location|
            menu.choice "#{location.name} average rating: #{location.average_rating}", -> {location_journals(location)}
        end
    end 
end

def journal_entry_menu(object, menu)
    # This helper method pulls up all journal entries associated with the first argument ("object")
    # Most frequently, the argument will either be user or location.
    object.journal_entries.each do |entry|    
        menu.choice "#{entry.title}", -> do
            system ("clear")
            puts "#{entry.title}: #{entry.review}"
        end
    end  
end

def eligible_locations
    # This method filters all of our locations and returns an array that only contains locations with journal entries.
    Location.all.select{|location| location.journal_entries.length > 0}
end

def ratings_sort(array_of_locations)
    # This method takes an array of locations and sorts them based on the average rating listed on their journal entries.
    # The .reverse assures that the highest rating will appear at the top.
    array_of_locations.sort_by { |location| location.average_rating}.reverse
end




