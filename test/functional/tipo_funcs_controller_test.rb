require 'test_helper'

class TipoFuncsControllerTest < ActionController::TestCase
  setup do
    @tipo_func = tipo_funcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_funcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_func" do
    assert_difference('TipoFunc.count') do
      post :create, tipo_func: @tipo_func.attributes
    end

    assert_redirected_to tipo_func_path(assigns(:tipo_func))
  end

  test "should show tipo_func" do
    get :show, id: @tipo_func
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_func
    assert_response :success
  end

  test "should update tipo_func" do
    put :update, id: @tipo_func, tipo_func: @tipo_func.attributes
    assert_redirected_to tipo_func_path(assigns(:tipo_func))
  end

  test "should destroy tipo_func" do
    assert_difference('TipoFunc.count', -1) do
      delete :destroy, id: @tipo_func
    end

    assert_redirected_to tipo_funcs_path
  end
end
