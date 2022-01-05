class AddProfileReferenceToJobEducationAndSkills < ActiveRecord::Migration[7.0]
  def change
    add_reference :skills, :profile, foreign_key: true
    add_reference :educations, :profile, foreign_key: true
    add_reference :jobs, :profile, foreign_key: true
  end
end
