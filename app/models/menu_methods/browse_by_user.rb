def user_journals(user)
    # This displays a list of all journals associated with a specific user.
    # It provides the user's name to the journal_entry_menu method to find the list of journals.
    $prompt.select ("#{user}'s Journal Entries") do |menu|
        journal_entry_menu(user, menu)
    end
    return_to_menu
end

def browse_by_user
    # This displays a list of all of our users. The current user can select one and view their journals.
    # They will also see the option to return to the main menu (go back) or exit the program.
    $prompt.select ('Choose a user:') do |menu|
        User.all.each do |user|
            menu.choice "#{user.username}", -> {user_journals(user)}
        end
        menu.choice "return to main menu", -> {start_menu}
        menu.choice "exit"
    end
end