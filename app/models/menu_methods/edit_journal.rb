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

def edit_journal(entry)
    $prompt.select ("What would you like to change?") do |menu|
        menu.choice "Title: #{entry.title}", -> {show_title(entry)}
        menu.choice "Body: #{entry.review}", -> {show_body(entry)}
        menu.choice "Rating: #{entry.rating}", -> {show_rating(entry)}
        menu.choice "Tags: #{entry.tags}", -> {show_tags(entry)}
    end
end

def show_title(journal)
    puts "Current title shows:"
    puts "#{journal.title}"
    puts "What should the new title be?"
    user_input = gets.chomp
    journal.update_attribute(:title, user_input)
end

def show_body(journal)
    puts "Current body shows:"
    puts "#{journal.review}"
    puts "What should the new body be?"
    user_input = gets.chomp
    journal.update_attribute(:review, user_input)
end

def show_rating(journal)
    puts "Current rating shows:"
    puts "#{journal.rating}"
    puts "What should the new rating be?"
    user_input = gets.chomp
    journal.update_attribute(:rating, user_input)
end

def show_tags(journal)
    puts "Current tags show:"
    puts "#{journal.tags}"
    puts "What should the new tags be?"
    user_input = gets.chomp
    journal.update_attribute(:tags, user_input)
end