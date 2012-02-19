require 'test_helper'

class DwarvesControllerTest < ActionController::TestCase
  setup do
    @dwarf = dwarves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dwarves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dwarf" do
    assert_difference('Dwarf.count') do
      post :create, dwarf: @dwarf.attributes
    end

    assert_redirected_to dwarf_path(assigns(:dwarf))
  end

  test "should show dwarf" do
    get :show, id: @dwarf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dwarf
    assert_response :success
  end

  test "should update dwarf" do
    put :update, id: @dwarf, dwarf: @dwarf.attributes
    assert_redirected_to dwarf_path(assigns(:dwarf))
  end

  test "should destroy dwarf" do
    assert_difference('Dwarf.count', -1) do
      delete :destroy, id: @dwarf
    end

    assert_redirected_to dwarves_path
  end
end
