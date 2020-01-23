def journal_entry_menu(object, menu)
    # This helper method pulls up all journal entries associated with the first argument ("object")
    object.journal_entries.each do |entry|    
        menu.choice "#{entry.title}", -> do
            system ("clear")
            puts "_/~\_/~\_/~\_/~\_/~\_/~\_/~\_/~\__/~\_/~\_/~\_/~\_/~\_/~\_/~\_/~\_".blue
            puts ""                            
            puts ""
            puts "      #{entry.title}" 
            puts ""
            puts DASH_MEDIUM.light_blue
            puts ""
            puts"       Rating: #{entry.rating} out of 5"
            puts ""
            puts DASH_MEDIUM.light_blue
            puts ""
            puts"       #{entry.review}"
            puts ""
            puts ""
            puts ""
            puts "_/~\_/~\_/~\_/~\_/~\_/~\_/~\_/~\__/~\_/~\_/~\_/~\_/~\_/~\_/~\_/~\_".blue
        end
    end  
end  