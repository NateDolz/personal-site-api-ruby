class Skill < ApplicationRecord
    enum skills: { 
        language: 'language', 
        framework: 'framework', 
        technology: 'technology', 
        skill: 'skill', 
        other: 'other'
    }
    validates :skill_enum, inclusion: {in: skills.keys}
end
