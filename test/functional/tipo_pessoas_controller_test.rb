require 'test_helper'

class TipoPessoasControllerTest < ActionController::TestCase
  setup do
    @tipo_pessoa = tipo_pessoas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_pessoas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_pessoa" do
    assert_difference('TipoPessoa.count') do
      post :create, tipo_pessoa: @tipo_pessoa.attributes
    end

    assert_redirected_to tipo_pessoa_path(assigns(:tipo_pessoa))
  end

  test "should show tipo_pessoa" do
    get :show, id: @tipo_pessoa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_pessoa
    assert_response :success
  end

  test "should update tipo_pessoa" do
    put :update, id: @tipo_pessoa, tipo_pessoa: @tipo_pessoa.attributes
    assert_redirected_to tipo_pessoa_path(assigns(:tipo_pessoa))
  end

  test "should destroy tipo_pessoa" do
    assert_difference('TipoPessoa.count', -1) do
      delete :destroy, id: @tipo_pessoa
    end

    assert_redirected_to tipo_pessoas_path
  end
end
