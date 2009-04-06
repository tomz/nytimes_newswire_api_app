require 'test_helper'

class MediaMetadataItemsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:media_metadata_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create media_metadata_items" do
    assert_difference('MediaMetadataItems.count') do
      post :create, :media_metadata_items => { }
    end

    assert_redirected_to media_metadata_items_path(assigns(:media_metadata_items))
  end

  test "should show media_metadata_items" do
    get :show, :id => media_metadata_items(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => media_metadata_items(:one).to_param
    assert_response :success
  end

  test "should update media_metadata_items" do
    put :update, :id => media_metadata_items(:one).to_param, :media_metadata_items => { }
    assert_redirected_to media_metadata_items_path(assigns(:media_metadata_items))
  end

  test "should destroy media_metadata_items" do
    assert_difference('MediaMetadataItems.count', -1) do
      delete :destroy, :id => media_metadata_items(:one).to_param
    end

    assert_redirected_to media_metadata_items_path
  end
end
