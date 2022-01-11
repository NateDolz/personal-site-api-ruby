class Education < ApplicationRecord
    # validators
    validates :graduation, presence: true
    validates :name, presence: true
    validates :description, presence: true    

    # relationships
    belongs_to :profile
end
