def user_journals(user)
    $prompt.select ("#{user}'s Journal Entries") do |menu|
        journal_entry_menu(user, menu)
    end
    return_to_menu
end

def browse_by_user
    $prompt.select ('Choose a user:') do |menu|
        User.all.each do |user|
            menu.choice "#{user.username}", -> {user_journals(user)}
        end
        menu.choice "return to main menu", -> {start_menu}
        menu.choice "exit"
    end
end