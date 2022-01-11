require "test_helper"

class StatusControllerTest < ControllerTest
  test "root path returns status" do
    get "/"
    assert_response :success
    assert_equal response.parsed_body["status"], "ok"
  end

  test "/status returns status" do
    get "/status"
    assert_response :success
    assert_equal response.parsed_body["status"], "ok"
  end
end
