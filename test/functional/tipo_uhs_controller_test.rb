require 'test_helper'

class TipoUhsControllerTest < ActionController::TestCase
  setup do
    @tipo_uh = tipo_uhs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_uhs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_uh" do
    assert_difference('TipoUh.count') do
      post :create, tipo_uh: @tipo_uh.attributes
    end

    assert_redirected_to tipo_uh_path(assigns(:tipo_uh))
  end

  test "should show tipo_uh" do
    get :show, id: @tipo_uh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_uh
    assert_response :success
  end

  test "should update tipo_uh" do
    put :update, id: @tipo_uh, tipo_uh: @tipo_uh.attributes
    assert_redirected_to tipo_uh_path(assigns(:tipo_uh))
  end

  test "should destroy tipo_uh" do
    assert_difference('TipoUh.count', -1) do
      delete :destroy, id: @tipo_uh
    end

    assert_redirected_to tipo_uhs_path
  end
end
