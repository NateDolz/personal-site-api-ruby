require "test_helper"

class SkillTest < ActiveSupport::TestCase
  test "skill_enum constrains appropriately" do
    Skill.create({
      skill_enum: 'language',
    })

  end
end
