class RemoveTagsFromJournal < ActiveRecord::Migration[5.0]
    def change
        remove_column :journal_entries, :tags, :string
    end
end