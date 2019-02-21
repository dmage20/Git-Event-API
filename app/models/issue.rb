class Issue < ApplicationRecord
    belongs_to :repository, primary_key: 'repository_id' 
end
