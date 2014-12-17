require 'test_helper'

class LentsControllerTest < ActionController::TestCase
  setup do
    @lent = lents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lent" do
    assert_difference('Lent.count') do
      post :create, lent: { date: @lent.date, text: @lent.text, title: @lent.title }
    end

    assert_redirected_to lent_path(assigns(:lent))
  end

  test "should show lent" do
    get :show, id: @lent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lent
    assert_response :success
  end

  test "should update lent" do
    patch :update, id: @lent, lent: { date: @lent.date, text: @lent.text, title: @lent.title }
    assert_redirected_to lent_path(assigns(:lent))
  end

  test "should destroy lent" do
    assert_difference('Lent.count', -1) do
      delete :destroy, id: @lent
    end

    assert_redirected_to lents_path
  end
end
