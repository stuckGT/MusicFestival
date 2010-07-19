require 'test_helper'

class PerformsAtsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:performs_ats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create performs_at" do
    assert_difference('PerformsAt.count') do
      post :create, :performs_at => { }
    end

    assert_redirected_to performs_at_path(assigns(:performs_at))
  end

  test "should show performs_at" do
    get :show, :id => performs_ats(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => performs_ats(:one).to_param
    assert_response :success
  end

  test "should update performs_at" do
    put :update, :id => performs_ats(:one).to_param, :performs_at => { }
    assert_redirected_to performs_at_path(assigns(:performs_at))
  end

  test "should destroy performs_at" do
    assert_difference('PerformsAt.count', -1) do
      delete :destroy, :id => performs_ats(:one).to_param
    end

    assert_redirected_to performs_ats_path
  end
end
