class Location < ActiveRecord::Base
    has_many :journal_entries
end