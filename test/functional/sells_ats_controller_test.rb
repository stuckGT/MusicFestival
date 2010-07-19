require 'test_helper'

class SellsAtsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sells_ats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sells_at" do
    assert_difference('SellsAt.count') do
      post :create, :sells_at => { }
    end

    assert_redirected_to sells_at_path(assigns(:sells_at))
  end

  test "should show sells_at" do
    get :show, :id => sells_ats(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => sells_ats(:one).to_param
    assert_response :success
  end

  test "should update sells_at" do
    put :update, :id => sells_ats(:one).to_param, :sells_at => { }
    assert_redirected_to sells_at_path(assigns(:sells_at))
  end

  test "should destroy sells_at" do
    assert_difference('SellsAt.count', -1) do
      delete :destroy, :id => sells_ats(:one).to_param
    end

    assert_redirected_to sells_ats_path
  end
end
