require 'test_helper'

class FineArtistsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fine_artists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fine_artist" do
    assert_difference('FineArtist.count') do
      post :create, :fine_artist => { }
    end

    assert_redirected_to fine_artist_path(assigns(:fine_artist))
  end

  test "should show fine_artist" do
    get :show, :id => fine_artists(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => fine_artists(:one).to_param
    assert_response :success
  end

  test "should update fine_artist" do
    put :update, :id => fine_artists(:one).to_param, :fine_artist => { }
    assert_redirected_to fine_artist_path(assigns(:fine_artist))
  end

  test "should destroy fine_artist" do
    assert_difference('FineArtist.count', -1) do
      delete :destroy, :id => fine_artists(:one).to_param
    end

    assert_redirected_to fine_artists_path
  end
end
