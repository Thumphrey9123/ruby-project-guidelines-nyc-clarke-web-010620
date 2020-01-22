# def delete_journal
#     puts "Which user?"
#     un = gets.chomp
#     deletion(un)
# end

# def deletion(un)
#     #give them a list of journals
#     $prompt.select ("Which journal?") do |menu|
#         # what I want is username.journal_entries.each do |entry|
#         #self == user.username of the journal_entry
#         u = User.where("username = #{un}")
# #        .journal_entries.each do |entry|
#  #               menu.choice entry.title, -> {entry.destroy}
#       #  end
#     end
# end

def delete_journal
    $prompt.select ("Which journal?") do |menu|
        $current_user.journal_entries.each do |entry|
            menu.choice entry.title, -> do 
                entry.destroy
                puts "deletion succesful"
            end
        end
        menu.choice "main menu"
    end
    return_to_menu
end