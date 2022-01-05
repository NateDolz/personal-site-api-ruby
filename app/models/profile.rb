class Profile < ApplicationRecord
    has_many :profile_lines
    has_many :jobs
    has_many :educations
    has_many :skills
end
