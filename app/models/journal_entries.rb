class JournalEntry < ActiveRecord::Base
    belongs_to :location
    belongs_to :user
    has_many :tags
end