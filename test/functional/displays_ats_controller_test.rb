require 'test_helper'

class DisplaysAtsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:displays_ats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create displays_at" do
    assert_difference('DisplaysAt.count') do
      post :create, :displays_at => { }
    end

    assert_redirected_to displays_at_path(assigns(:displays_at))
  end

  test "should show displays_at" do
    get :show, :id => displays_ats(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => displays_ats(:one).to_param
    assert_response :success
  end

  test "should update displays_at" do
    put :update, :id => displays_ats(:one).to_param, :displays_at => { }
    assert_redirected_to displays_at_path(assigns(:displays_at))
  end

  test "should destroy displays_at" do
    assert_difference('DisplaysAt.count', -1) do
      delete :destroy, :id => displays_ats(:one).to_param
    end

    assert_redirected_to displays_ats_path
  end
end
