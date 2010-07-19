require 'test_helper'

class PlaysOnsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plays_ons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plays_on" do
    assert_difference('PlaysOn.count') do
      post :create, :plays_on => { }
    end

    assert_redirected_to plays_on_path(assigns(:plays_on))
  end

  test "should show plays_on" do
    get :show, :id => plays_ons(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => plays_ons(:one).to_param
    assert_response :success
  end

  test "should update plays_on" do
    put :update, :id => plays_ons(:one).to_param, :plays_on => { }
    assert_redirected_to plays_on_path(assigns(:plays_on))
  end

  test "should destroy plays_on" do
    assert_difference('PlaysOn.count', -1) do
      delete :destroy, :id => plays_ons(:one).to_param
    end

    assert_redirected_to plays_ons_path
  end
end
