def delete_journal
    #give them a list of journals
    $prompt.select ("Which journal?") do |menu|
        self.journal_entries do |entry|
            menu.choice entry.title
        end
    end
    # delete the journal
end