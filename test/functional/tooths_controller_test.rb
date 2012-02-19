require 'test_helper'

class ToothsControllerTest < ActionController::TestCase
  setup do
    @tooth = tooths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tooths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tooth" do
    assert_difference('Tooth.count') do
      post :create, tooth: @tooth.attributes
    end

    assert_redirected_to tooth_path(assigns(:tooth))
  end

  test "should show tooth" do
    get :show, id: @tooth
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tooth
    assert_response :success
  end

  test "should update tooth" do
    put :update, id: @tooth, tooth: @tooth.attributes
    assert_redirected_to tooth_path(assigns(:tooth))
  end

  test "should destroy tooth" do
    assert_difference('Tooth.count', -1) do
      delete :destroy, id: @tooth
    end

    assert_redirected_to tooths_path
  end
end
