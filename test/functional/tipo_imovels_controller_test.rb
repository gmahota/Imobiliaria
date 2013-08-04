require 'test_helper'

class TipoImovelsControllerTest < ActionController::TestCase
  setup do
    @tipo_imovel = tipo_imovels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_imovels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_imovel" do
    assert_difference('TipoImovel.count') do
      post :create, tipo_imovel: { descricao: @tipo_imovel.descricao }
    end

    assert_redirected_to tipo_imovel_path(assigns(:tipo_imovel))
  end

  test "should show tipo_imovel" do
    get :show, id: @tipo_imovel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_imovel
    assert_response :success
  end

  test "should update tipo_imovel" do
    put :update, id: @tipo_imovel, tipo_imovel: { descricao: @tipo_imovel.descricao }
    assert_redirected_to tipo_imovel_path(assigns(:tipo_imovel))
  end

  test "should destroy tipo_imovel" do
    assert_difference('TipoImovel.count', -1) do
      delete :destroy, id: @tipo_imovel
    end

    assert_redirected_to tipo_imovels_path
  end
end
