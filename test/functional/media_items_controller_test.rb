require 'test_helper'

class MediaItemsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:media_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create media_items" do
    assert_difference('MediaItems.count') do
      post :create, :media_items => { }
    end

    assert_redirected_to media_items_path(assigns(:media_items))
  end

  test "should show media_items" do
    get :show, :id => media_items(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => media_items(:one).to_param
    assert_response :success
  end

  test "should update media_items" do
    put :update, :id => media_items(:one).to_param, :media_items => { }
    assert_redirected_to media_items_path(assigns(:media_items))
  end

  test "should destroy media_items" do
    assert_difference('MediaItems.count', -1) do
      delete :destroy, :id => media_items(:one).to_param
    end

    assert_redirected_to media_items_path
  end
end
