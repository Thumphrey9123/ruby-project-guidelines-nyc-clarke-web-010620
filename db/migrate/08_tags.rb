class Tags < ActiveRecord::Migration[5.0]
    def change
        create_table :tags do |t|
            t.text :name
            t.text :journal_entry
            t.integer :journal_entry_id

            t.timestamps
        end
    end
end