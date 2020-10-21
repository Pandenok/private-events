require 'test_helper'

class EnrollmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get enrollments_create_url
    assert_response :success
  end

  test "should get destroy" do
    get enrollments_destroy_url
    assert_response :success
  end

end
