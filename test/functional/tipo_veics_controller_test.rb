require 'test_helper'

class TipoVeicsControllerTest < ActionController::TestCase
  setup do
    @tipo_veic = tipo_veics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_veics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_veic" do
    assert_difference('TipoVeic.count') do
      post :create, tipo_veic: @tipo_veic.attributes
    end

    assert_redirected_to tipo_veic_path(assigns(:tipo_veic))
  end

  test "should show tipo_veic" do
    get :show, id: @tipo_veic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_veic
    assert_response :success
  end

  test "should update tipo_veic" do
    put :update, id: @tipo_veic, tipo_veic: @tipo_veic.attributes
    assert_redirected_to tipo_veic_path(assigns(:tipo_veic))
  end

  test "should destroy tipo_veic" do
    assert_difference('TipoVeic.count', -1) do
      delete :destroy, id: @tipo_veic
    end

    assert_redirected_to tipo_veics_path
  end
end
