require 'test_helper'

class EstatutosControllerTest < ActionController::TestCase
  setup do
    @estatuto = estatutos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estatutos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estatuto" do
    assert_difference('Estatuto.count') do
      post :create, estatuto: { descricao: @estatuto.descricao }
    end

    assert_redirected_to estatuto_path(assigns(:estatuto))
  end

  test "should show estatuto" do
    get :show, id: @estatuto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estatuto
    assert_response :success
  end

  test "should update estatuto" do
    put :update, id: @estatuto, estatuto: { descricao: @estatuto.descricao }
    assert_redirected_to estatuto_path(assigns(:estatuto))
  end

  test "should destroy estatuto" do
    assert_difference('Estatuto.count', -1) do
      delete :destroy, id: @estatuto
    end

    assert_redirected_to estatutos_path
  end
end
