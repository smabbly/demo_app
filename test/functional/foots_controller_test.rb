require 'test_helper'

class FootsControllerTest < ActionController::TestCase
  setup do
    @foot = foots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foot" do
    assert_difference('Foot.count') do
      post :create, foot: @foot.attributes
    end

    assert_redirected_to foot_path(assigns(:foot))
  end

  test "should show foot" do
    get :show, id: @foot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @foot
    assert_response :success
  end

  test "should update foot" do
    put :update, id: @foot, foot: @foot.attributes
    assert_redirected_to foot_path(assigns(:foot))
  end

  test "should destroy foot" do
    assert_difference('Foot.count', -1) do
      delete :destroy, id: @foot
    end

    assert_redirected_to foots_path
  end
end
