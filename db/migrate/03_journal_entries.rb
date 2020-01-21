class JournalEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :journal_entries do |t|
      t.string :review
      t.integer :user_id
      t.integer :location_id
      t.integer :rating
      
      t.timestamps
    end
  end
end
