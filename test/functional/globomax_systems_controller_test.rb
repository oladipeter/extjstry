require 'test_helper'

class GlobomaxSystemsControllerTest < ActionController::TestCase
  setup do
    @globomax_system = globomax_systems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:globomax_systems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create globomax_system" do
    assert_difference('GlobomaxSystem.count') do
      post :create, :globomax_system => @globomax_system.attributes
    end

    assert_redirected_to globomax_system_path(assigns(:globomax_system))
  end

  test "should show globomax_system" do
    get :show, :id => @globomax_system.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @globomax_system.to_param
    assert_response :success
  end

  test "should update globomax_system" do
    put :update, :id => @globomax_system.to_param, :globomax_system => @globomax_system.attributes
    assert_redirected_to globomax_system_path(assigns(:globomax_system))
  end

  test "should destroy globomax_system" do
    assert_difference('GlobomaxSystem.count', -1) do
      delete :destroy, :id => @globomax_system.to_param
    end

    assert_redirected_to globomax_systems_path
  end
end
