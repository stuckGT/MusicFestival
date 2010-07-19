require 'test_helper'

class FestivalSponsorsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:festival_sponsors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create festival_sponsor" do
    assert_difference('FestivalSponsor.count') do
      post :create, :festival_sponsor => { }
    end

    assert_redirected_to festival_sponsor_path(assigns(:festival_sponsor))
  end

  test "should show festival_sponsor" do
    get :show, :id => festival_sponsors(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => festival_sponsors(:one).to_param
    assert_response :success
  end

  test "should update festival_sponsor" do
    put :update, :id => festival_sponsors(:one).to_param, :festival_sponsor => { }
    assert_redirected_to festival_sponsor_path(assigns(:festival_sponsor))
  end

  test "should destroy festival_sponsor" do
    assert_difference('FestivalSponsor.count', -1) do
      delete :destroy, :id => festival_sponsors(:one).to_param
    end

    assert_redirected_to festival_sponsors_path
  end
end
