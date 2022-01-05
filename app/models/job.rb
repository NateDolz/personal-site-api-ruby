class Job < ApplicationRecord
    belongs_to :profile
    has_many :job_lines
end
