require 'test_helper'

class TipoNegociosControllerTest < ActionController::TestCase
  setup do
    @tipo_negocio = tipo_negocios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_negocios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_negocio" do
    assert_difference('TipoNegocio.count') do
      post :create, tipo_negocio: { descricao: @tipo_negocio.descricao }
    end

    assert_redirected_to tipo_negocio_path(assigns(:tipo_negocio))
  end

  test "should show tipo_negocio" do
    get :show, id: @tipo_negocio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_negocio
    assert_response :success
  end

  test "should update tipo_negocio" do
    put :update, id: @tipo_negocio, tipo_negocio: { descricao: @tipo_negocio.descricao }
    assert_redirected_to tipo_negocio_path(assigns(:tipo_negocio))
  end

  test "should destroy tipo_negocio" do
    assert_difference('TipoNegocio.count', -1) do
      delete :destroy, id: @tipo_negocio
    end

    assert_redirected_to tipo_negocios_path
  end
end
