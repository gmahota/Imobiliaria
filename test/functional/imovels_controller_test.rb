require 'test_helper'

class ImovelsControllerTest < ActionController::TestCase
  setup do
    @imovel = imovels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imovels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imovel" do
    assert_difference('Imovel.count') do
      post :create, imovel: { area: @imovel.area, cidade: @imovel.cidade, decimal: @imovel.decimal, descriacao: @imovel.descriacao, estado: @imovel.estado, localizacao: @imovel.localizacao, pais: @imovel.pais, preco: @imovel.preco, provincia: @imovel.provincia, referencia: @imovel.referencia, resumo: @imovel.resumo, string: @imovel.string, string: @imovel.string, string: @imovel.string, string: @imovel.string, string: @imovel.string, string: @imovel.string, string: @imovel.string, string: @imovel.string, string: @imovel.string, text: @imovel.text, text: @imovel.text, tipoImovel: @imovel.tipoImovel, tipoNegocio: @imovel.tipoNegocio }
    end

    assert_redirected_to imovel_path(assigns(:imovel))
  end

  test "should show imovel" do
    get :show, id: @imovel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imovel
    assert_response :success
  end

  test "should update imovel" do
    put :update, id: @imovel, imovel: { area: @imovel.area, cidade: @imovel.cidade, decimal: @imovel.decimal, descriacao: @imovel.descriacao, estado: @imovel.estado, localizacao: @imovel.localizacao, pais: @imovel.pais, preco: @imovel.preco, provincia: @imovel.provincia, referencia: @imovel.referencia, resumo: @imovel.resumo, string: @imovel.string, string: @imovel.string, string: @imovel.string, string: @imovel.string, string: @imovel.string, string: @imovel.string, string: @imovel.string, string: @imovel.string, string: @imovel.string, text: @imovel.text, text: @imovel.text, tipoImovel: @imovel.tipoImovel, tipoNegocio: @imovel.tipoNegocio }
    assert_redirected_to imovel_path(assigns(:imovel))
  end

  test "should destroy imovel" do
    assert_difference('Imovel.count', -1) do
      delete :destroy, id: @imovel
    end

    assert_redirected_to imovels_path
  end
end
