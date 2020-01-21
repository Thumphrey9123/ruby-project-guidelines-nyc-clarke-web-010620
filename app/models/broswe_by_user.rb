def user_journals(user)
    $prompt.select ("#{user}'s Journal Entries") do |menu|
        user.journal_entries.each do |entry|
            menu.choice "#{entry.review}"
        end
    end
end

def browse_by_user
    $prompt.select ('Choose a user:') do |menu|
        User.all.each do |user|
            menu.choice "#{user.name}", -> {user_journals(user)}
        end
    end
end