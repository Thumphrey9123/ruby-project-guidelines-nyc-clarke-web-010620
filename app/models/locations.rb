class Location < ActiveRecord::Base
    has_many :journal_entries

    def rating
        journal_entries.sum(:rating) / journal_entries.length
    end

end