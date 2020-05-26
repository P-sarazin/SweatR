require 'test_helper'

class CoachesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get coaches_index_url
    assert_response :success
  end

end
