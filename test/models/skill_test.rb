require "test_helper"

class SkillTest < ActiveSupport::TestCase
  test "skill_enum validator" do
    skill = Skill.new do |s|
      s.skill_enum = "fake"
      s.description = "a unique skill"
      s.profile = Profile.first
    end

    assert_not skill.save

    skill.skill_enum = "language"
    
    assert skill.save
  end

  test "description validator" do 
    skill = Skill.new do |s|
      s.skill_enum = "language"
      s.description = ""
      s.profile = Profile.first
    end

    assert_not skill.save

    skill.description = 'a description'
    
    assert skill.save
  end

  test "profile relationship" do
    skill = Skill.new do |s|
      s.skill_enum = "other"
      s.description = "a other skill"
    end

    assert_not skill.save

    skill.profile = Profile.first

    assert skill.save
  end
end
