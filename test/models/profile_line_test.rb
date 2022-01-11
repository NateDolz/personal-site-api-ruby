require "test_helper"

class ProfileLineTest < ActiveSupport::TestCase
  test "profile line validator" do
    p_line = ProfileLine.new do |line|
      line.line = "" 
      line.profile = Profile.first
    end

    assert_not p_line.save
    
    p_line.line = "profile line"

    assert p_line.save
  end
  
  test "profile relationship" do
    p_line = ProfileLine.new do |line|
      line.line = "a part of a profile"
    end

    assert_not p_line.save

    p_line.profile = Profile.first

    assert p_line.save
  end
end
