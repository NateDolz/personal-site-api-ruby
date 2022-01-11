require "test_helper"

class ProfileTest < ActiveSupport::TestCase
  test "email validator" do
    profile = Profile.new do |user|
      user.first_name = "test"
      user.last_name = "profile"
      user.phone = "222.222.2222"
      user.email = "not a real email"
    end

    assert_not profile.save

    profile.email = "a_real_email@email.com"
        
    assert profile.save
  end

  test "phone validator" do
    profile = Profile.new do |user|
      user.first_name = "test"
      user.last_name = "profile"
      user.phone = "not a good number"
      user.email = "test_user@email.com"
    end

    assert_not profile.valid?

    profile.phone = "222.222.2222"

    assert profile.valid?

    profile.phone = "(222) 444-2222"

    assert profile.valid?

    profile.phone = "222-444-7777"

    assert profile.valid?

    profile.phone = "+1 (245) 678-9009"

    assert profile.valid?

    profile.phone = "123 456 7890"

    assert profile.valid? 

    assert profile.save
  end

  test "first name validator" do
    profile = Profile.new do |user| 
      user.first_name = ""
      user.last_name = "profile"
      user.phone = "222.222.3333"
      user.email = "test_user@email.com"
    end

    assert_not profile.save

    profile.first_name = "test"

    assert profile.save
  end

  test "last_name_validator" do
    profile = Profile.new do |user| 
      user.first_name = "test"
      user.last_name = ""
      user.phone = "222.222.3333"
      user.email = "test_user@email.com"
    end

    assert_not profile.save

    profile.last_name = "profile"

    assert profile.save
  end
end
