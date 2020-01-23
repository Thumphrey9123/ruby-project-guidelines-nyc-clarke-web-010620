def journal_entry_menu(object, menu)
    # This helper method pulls up all journal entries associated with the first argument ("object")
    object.journal_entries.each do |entry|    
        menu.choice "#{entry.title}", -> do
            system ("clear")
            puts "_/~\_/~\_/~\_/~\_/~\_/~\_/~\_/~\_"
            puts "_/~"                                  
            puts "_/~\ #{entry.title}" 
            puts "_/~"
            puts "_/~\ Rating: #{entry.rating} out of 5"
            puts "_/~"
            puts "_/~\ #{entry.review}"
            puts "_/~"
            puts "_/~\_/~\_/~\_/~\_/~\_/~\_/~\_/~\_"
        end
    end  
end  