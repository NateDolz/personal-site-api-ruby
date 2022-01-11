class Profile < ApplicationRecord
    # validators
    validates :email, 
        presence: true,
        format: { with: URI::MailTo::EMAIL_REGEXP}

    validates :phone,
        presence: true,        
        format: { with: /(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}/ }

    validates :first_name, presence: true
    validates :last_name, presence: true

    # relationships
    has_many :profile_lines
    has_many :jobs
    has_many :educations
    has_many :skills
end
