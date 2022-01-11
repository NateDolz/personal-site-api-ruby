class Skill < ApplicationRecord
    # constants
    SKILL_ENUM_OPTIONS = %w{language framework other technology skill}

    # validators
    validates :skill_enum, inclusion: { in: SKILL_ENUM_OPTIONS }
    validates :description, presence: true

    # relationships
    belongs_to :profile
end
