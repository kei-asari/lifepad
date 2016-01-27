require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get posts_index" do
    get :posts_index
    assert_response :success
  end

end
