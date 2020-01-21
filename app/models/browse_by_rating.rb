def location_journals(location)
    # I want the user to be able to choose a location and then see a list of journal entries
    # associated with that location.
    $prompt.select ("#{location}'s Journal Entries'") do |menu|
        journal_entry_menu(location, menu)     
    end
end

def browse_by_rating
    # I want to display a list of locations with their average rating next to them.
    $prompt.select('Choose a location') do |menu|
        Location.all.each do |location|
            menu.choice "#{location.name} average rating: #{location.journal_entries.average(:rating)}", -> {location_journals(location)}
        end
    end 
end

def journal_entry_menu(object, menu)
    # This helper method pulls up all journal entries associated with the first argument ("object")
    object.journal_entries.each do |entry|    
        menu.choice "#{entry.title}", -> {puts "#{entry.title}: #{entry.review}"}
    end   
end     


# def user_journals(user)
#     $prompt.select ("#{user}'s Journal Entries") do |menu|
#         user.journal_entries.each do |entry|
#             menu.choice "#{entry.review}"
#         end
#     end
# end

# def browse_by_user
#     $prompt.select ('Choose a user:') do |menu|
#         User.all.each do |user|
#             menu.choice "#{user.name}", -> {user_journals(user)}
#         end
#     end
# end