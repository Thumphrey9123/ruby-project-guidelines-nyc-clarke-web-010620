def journal_display
    $prompt.select ("Which journal?") do |menu|
        $current_user.journal_entries.each do |entry|
            menu.choice entry.title, -> do 
                edit_journal(entry)
                puts "update successful"
            end
        end
        menu.choice "main menu"
    end
    return_to_menu
end

# def edit_journal(entry)
#     $prompt.select ("What would you like to change?") do |menu|
#         menu.choice entry.title, -> display_selected_section(entry, title)
#         menu.choice entry.review, -> display_selected_section(entry, review)
#         menu.choice entry.rating, -> display_selected_section(entry, rating)
#         menu.choice entry.tags, -> display_selected_section(entry, tags)
#     end
# end

def display_selected_section(journal, input)
    puts "Current #{input} shows:"
    puts "#{journal.input}"
    puts "What should the new #{input} be?"
    user_input = gets.chomp
    journal.input = user_input
end