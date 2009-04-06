require 'test_helper'

class NewsItemsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create news_items" do
    assert_difference('NewsItems.count') do
      post :create, :news_items => { }
    end

    assert_redirected_to news_items_path(assigns(:news_items))
  end

  test "should show news_items" do
    get :show, :id => news_items(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => news_items(:one).to_param
    assert_response :success
  end

  test "should update news_items" do
    put :update, :id => news_items(:one).to_param, :news_items => { }
    assert_redirected_to news_items_path(assigns(:news_items))
  end

  test "should destroy news_items" do
    assert_difference('NewsItems.count', -1) do
      delete :destroy, :id => news_items(:one).to_param
    end

    assert_redirected_to news_items_path
  end
end
