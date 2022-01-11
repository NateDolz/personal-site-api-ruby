class JobLine < ApplicationRecord
    # validators
    validates :line, presence: true

    # relationships
    belongs_to :job
end
