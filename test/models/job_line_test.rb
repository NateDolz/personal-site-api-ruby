require "test_helper"

class JobLineTest < ActiveSupport::TestCase
  test "job relationship" do
    j_line = JobLine.new do |line|
      line.line = "A job line"
    end

    assert_not j_line.save

    j_line.job = Job.first

    assert j_line.save
  end

  test "line validation" do 
    j_line = JobLine.new do |line|
      line.job = Job.first
    end

    assert_not j_line.save

    j_line.line = "A job line"

    assert j_line.save
  end
end
