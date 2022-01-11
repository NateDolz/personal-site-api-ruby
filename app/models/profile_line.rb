class ProfileLine < ApplicationRecord
    # validators
    validates :line, presence: true

    # relationships
    belongs_to :profile
end
