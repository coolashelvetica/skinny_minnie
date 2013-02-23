require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get my_rentals" do
    get :my_rentals
    assert_response :success
  end

  test "should get my_credits" do
    get :my_credits
    assert_response :success
  end

  test "should get my_invites" do
    get :my_invites
    assert_response :success
  end

  test "should get my_faves" do
    get :my_faves
    assert_response :success
  end

  test "should get edit_profile" do
    get :edit_profile
    assert_response :success
  end

end
