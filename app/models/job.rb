class Job < ApplicationRecord
    # validators
    validates :start_date, presence: true    
    validates :name, presence: true
    validates :role, presence: true 
    validate :end_date_after_start_date   

    # relationships
    belongs_to :profile
    has_many :job_lines

    # validation logic
    def end_date_after_start_date
        return if end_date.blank? || start_date.blank?

        if end_date < start_date
            errors.add(:end_date, "end must be after start")
        end
    end

end
