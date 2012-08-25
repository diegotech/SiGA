require 'test_helper'

class UhsControllerTest < ActionController::TestCase
  setup do
    @uh = uhs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:uhs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create uh" do
    assert_difference('Uh.count') do
      post :create, uh: @uh.attributes
    end

    assert_redirected_to uh_path(assigns(:uh))
  end

  test "should show uh" do
    get :show, id: @uh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @uh
    assert_response :success
  end

  test "should update uh" do
    put :update, id: @uh, uh: @uh.attributes
    assert_redirected_to uh_path(assigns(:uh))
  end

  test "should destroy uh" do
    assert_difference('Uh.count', -1) do
      delete :destroy, id: @uh
    end

    assert_redirected_to uhs_path
  end
end
