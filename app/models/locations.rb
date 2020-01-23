class Location < ActiveRecord::Base
    has_many :journal_entries

    def average_rating
        # This method finds the average of one location's journal entry reviews.
        self.journal_entries.sum(:rating).to_f / self.journal_entries.where("rating >= 0").length
    end

end