require 'test_helper'

class TipologiaControllerTest < ActionController::TestCase
  setup do
    @tipologium = tipologia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipologia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipologium" do
    assert_difference('Tipologium.count') do
      post :create, tipologium: { descricao: @tipologium.descricao, tipoImovel_id: @tipologium.tipoImovel_id }
    end

    assert_redirected_to tipologium_path(assigns(:tipologium))
  end

  test "should show tipologium" do
    get :show, id: @tipologium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipologium
    assert_response :success
  end

  test "should update tipologium" do
    put :update, id: @tipologium, tipologium: { descricao: @tipologium.descricao, tipoImovel_id: @tipologium.tipoImovel_id }
    assert_redirected_to tipologium_path(assigns(:tipologium))
  end

  test "should destroy tipologium" do
    assert_difference('Tipologium.count', -1) do
      delete :destroy, id: @tipologium
    end

    assert_redirected_to tipologia_path
  end
end
