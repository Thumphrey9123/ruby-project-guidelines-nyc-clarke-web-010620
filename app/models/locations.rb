class Location < ActiveRecord::Base
    has_many :journal_entries

    def average_rating
        self.journal_entries.sum(:rating).to_f / self.journal_entries.where("rating >= 0").length
    end

end