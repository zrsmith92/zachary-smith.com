require 'test_helper'

class SlidesControllerTest < ActionController::TestCase
  test "should get sopa" do
    get :sopa
    assert_response :success
  end

end
