class User < ActiveRecord::Base
    has_many :journal_entries
    validates_uniqueness_of :username
    validates :username, presence: true
    validates :password, presence: true
end