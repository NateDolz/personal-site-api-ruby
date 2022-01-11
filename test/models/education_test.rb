require "test_helper"

class EducationTest < ActiveSupport::TestCase
  test "profile relationship" do
    school = Education.new do |edu|
      edu.graduation = Time.new 2021, 01, 01
      edu.name = "A university"
      edu.description = "A degree"
    end

    assert_not school.save

    school.profile = Profile.first

    assert school.save
  end

  test "graduation validation" do
    school = Education.new do |edu|      
      edu.name = "A university"
      edu.description = "A degree"
      edu.profile = Profile.first
    end

    assert_not school.save

    school.graduation = Time.new 2021, 01, 01

    assert school.save
  end

  test "name validation" do 
    school = Education.new do |edu|
      edu.graduation = Time.new 2021, 01, 01
      edu.description = "A degree"
      edu.profile = Profile.first
    end

    assert_not school.save

    school.name = "A school"

    assert school.save
  end

  test "description validation" do
    school = Education.new do |edu|
      edu.graduation = Time.new 2021, 01, 01
      edu.name = "A university"
      edu.profile = Profile.first
    end

    assert_not school.save

    school.description = "A degree"

    assert school.save
  end
end
