require 'test_helper'

class GlobomaxsystemsControllerTest < ActionController::TestCase
  setup do
    @globomaxsystem = globomaxsystems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:globomaxsystems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create globomaxsystem" do
    assert_difference('Globomaxsystem.count') do
      post :create, :globomaxsystem => @globomaxsystem.attributes
    end

    assert_redirected_to globomaxsystem_path(assigns(:globomaxsystem))
  end

  test "should show globomaxsystem" do
    get :show, :id => @globomaxsystem.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @globomaxsystem.to_param
    assert_response :success
  end

  test "should update globomaxsystem" do
    put :update, :id => @globomaxsystem.to_param, :globomaxsystem => @globomaxsystem.attributes
    assert_redirected_to globomaxsystem_path(assigns(:globomaxsystem))
  end

  test "should destroy globomaxsystem" do
    assert_difference('Globomaxsystem.count', -1) do
      delete :destroy, :id => @globomaxsystem.to_param
    end

    assert_redirected_to globomaxsystems_path
  end
end
