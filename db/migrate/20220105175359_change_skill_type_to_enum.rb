class ChangeSkillTypeToEnum < ActiveRecord::Migration[7.0]
  def change
      execute <<-SQL
        CREATE TYPE skill_type AS ENUM ('language', 'framework', 'technology', 'skill', 'other');        
      SQL
      remove_column :skills, :type
      add_column :skills, :skill_enum, :skill_type

  end
end
