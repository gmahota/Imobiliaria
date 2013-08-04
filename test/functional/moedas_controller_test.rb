require 'test_helper'

class MoedasControllerTest < ActionController::TestCase
  setup do
    @moeda = moedas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moedas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moeda" do
    assert_difference('Moeda.count') do
      post :create, moeda: { descricao: @moeda.descricao, sigla: @moeda.sigla }
    end

    assert_redirected_to moeda_path(assigns(:moeda))
  end

  test "should show moeda" do
    get :show, id: @moeda
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @moeda
    assert_response :success
  end

  test "should update moeda" do
    put :update, id: @moeda, moeda: { descricao: @moeda.descricao, sigla: @moeda.sigla }
    assert_redirected_to moeda_path(assigns(:moeda))
  end

  test "should destroy moeda" do
    assert_difference('Moeda.count', -1) do
      delete :destroy, id: @moeda
    end

    assert_redirected_to moedas_path
  end
end
