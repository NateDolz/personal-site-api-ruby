require "test_helper"

class JobTest < ActiveSupport::TestCase
  test "profile relationship" do
    job = Job.new do |j|
      j.start_date = Time.new(2021,01,01)
      j.name = "A job"
      j.role = "A role"
    end

    assert_not job.save

    job.profile = Profile.first

    assert job.save
  end

  test "start_date validator" do
    job = Job.new do |j|    
      j.name = "A job"
      j.role = "A role"
      j.profile = Profile.first
    end

    assert_not job.save

    job.start_date = Time.new(2021,01,01)
    
    assert job.save
  end

  test "end_date validation" do
    job = Job.new do |j|    
      j.start_date = Time.new(2021,01,10)
      j.name = "A job"
      j.role = "A role"
      j.profile = Profile.first
    end

    assert job.valid?

    job.end_date = Time.new(2021,01,01)

    assert_not job.valid?

    job.end_date = Time.new(2021,01,11)    

    assert job.valid?

    assert job.save
  end

  test "name validation" do 
    job = Job.new do |j|
      j.start_date = Time.new(2021,01,01)
      j.role = "A role"
      j.profile = Profile.first
    end

    assert_not job.save

    job.name = "A job"

    assert job.save    
  end

  test "role validation" do
    job = Job.new do |j|
      j.start_date = Time.new(2021,01,01)
      j.name = "A job"
      j.profile = Profile.first
    end

    assert_not job.save

    job.role = "A role"

    assert job.save
  end  
end
