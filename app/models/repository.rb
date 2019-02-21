class Repository < ApplicationRecord
    self.primary_key = 'repository_id'
    has_many :issues
end
