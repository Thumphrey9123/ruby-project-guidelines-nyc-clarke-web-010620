class AddTitleAndTagToJournal < ActiveRecord::Migration[5.0]
    def change
        add_column :journal_entries, :title, :string
        add_column :journal_entries, :tags, :string # we want this to be an array or CSV of short, descriptive strings
    end
end