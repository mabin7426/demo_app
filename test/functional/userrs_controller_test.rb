require 'test_helper'

class UserrsControllerTest < ActionController::TestCase
  setup do
    @userr = userrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userr" do
    assert_difference('Userr.count') do
      post :create, userr: { email: @userr.email, name: @userr.name }
    end

    assert_redirected_to userr_path(assigns(:userr))
  end

  test "should show userr" do
    get :show, id: @userr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userr
    assert_response :success
  end

  test "should update userr" do
    put :update, id: @userr, userr: { email: @userr.email, name: @userr.name }
    assert_redirected_to userr_path(assigns(:userr))
  end

  test "should destroy userr" do
    assert_difference('Userr.count', -1) do
      delete :destroy, id: @userr
    end

    assert_redirected_to userrs_path
  end
end
