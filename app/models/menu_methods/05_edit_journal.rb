def journal_display
    # This allows a user to pick from their journals and make an edit.
    $prompt.select ("Which journal?") do |menu|
        $current_user.journal_entries.each do |entry|
            menu.choice entry.title, -> do 
                edit_journal(entry)
                $current_user = User.find($current_user.id)
                puts "update successful".green
            end
        end
        menu.choice "main menu"
    end
    return_to_menu
end

def edit_journal(entry)
    # This method specifically displays the content of four categories from a single journal entry.
    # Selecting one of the categories will invoke a helper method designed to edit it.
    $prompt.select ("What would you like to change?") do |menu|
        menu.choice "Title: #{entry.title}", -> {show_title(entry)}
        menu.choice "Body: #{entry.review}", -> {show_body(entry)}
        menu.choice "Rating: #{entry.rating}", -> {show_rating(entry)}
        menu.choice "Tags", -> {show_tags(entry)}
        menu.choice "Return to main menu", -> { return start_menu } 
    end
end

# The following four methods allow you to change a specific category.
# They accept an argument of a journal_entry instance.
def show_title(journal)
    puts "Current title shows:"
    puts "#{journal.title}"
    # puts "What should the new title be?"
    # user_input = gets.chomp
    user_input = $prompt.ask("What should the new title be?")
    journal.update_attribute(:title, user_input)
end

def show_body(journal)
    # Displays a journal's "review" and allows user to replace it.
    puts "Current body shows:"
    puts "#{journal.review}"
    user_input = $prompt.ask("What should the new body be?")
    journal.update_attribute(:review, user_input)
end

def show_rating(journal)
    # Displays a journal's rating and allows user to replace it.
    puts "Current rating shows:"
    puts "#{journal.rating}"
    user_input = $prompt.ask("What should the new rating be?")
    journal.update_attribute(:rating, user_input)
end

def show_tags(journal)
    # Provides the user with a choice of whether they would like to add or delete tags from a journal entry.
    $prompt.select ("What would you like to change?") do |menu|
        menu.choice "Add tags", -> {add_tag(journal)}
        menu.choice "Delete tags", -> {delete_tag(journal)}
        menu.choice "Return to main menu" 
    end
end

def delete_tag(journal)
    if journal.tags.length > 0
        $prompt.select ("Which tag would you like to delete?") do |menu|
            journal.tags.each do |tag|
                menu.choice "#{tag.name}", -> do
                tag.destroy
                
                puts "Tag was successfully deleted".red
            end
        end
    end
    else
        system("clear")
        puts LINE_SQUIGGLES_MEDIUM.magenta
        puts ""
        puts LINE_SQUIGGLES_MEDIUM.magenta
        puts "There are no tags for #{journal.title}.".red
        show_tags(journal)
    end
end

def add_tag(journal)
    # Creates a new tag and assigns it to the journal.
    # In the future, I would like tags and journals to have a many-to-many relationship.
    # When that becomes the case, we'll change this function to become find_or_create so that one tag can have many journal entries.
    user_input = $prompt.ask("What should the new tag be?")
    Tag.create(name: user_input, journal_entry: journal)
end


















# def tag_names(journal)
#     journal.tags.each{|tag|tag.name}
# end

# def input_parse(input_string)
#     input_string.delete(" ").split(",")
# end

##former contents of show tags
# puts "Current tags show:"
#     puts "#{tag_names(journal)}"
#     # puts "What should the new tags be?"
#     # user_input = gets.chomp
#     user_input = $prompt.ask("What should the new tags be?")
#     # input_array = input_parse(user_input)
#     # tag_creation(input_array)
#     journal.update_attribute(:tags, user_input)