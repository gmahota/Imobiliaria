require 'test_helper'

class FotosrespostaControllerTest < ActionController::TestCase
  setup do
    @fotosrespostum = fotosresposta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fotosresposta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fotosrespostum" do
    assert_difference('Fotosrespostum.count') do
      post :create, fotosrespostum: { descricao: @fotosrespostum.descricao }
    end

    assert_redirected_to fotosrespostum_path(assigns(:fotosrespostum))
  end

  test "should show fotosrespostum" do
    get :show, id: @fotosrespostum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fotosrespostum
    assert_response :success
  end

  test "should update fotosrespostum" do
    put :update, id: @fotosrespostum, fotosrespostum: { descricao: @fotosrespostum.descricao }
    assert_redirected_to fotosrespostum_path(assigns(:fotosrespostum))
  end

  test "should destroy fotosrespostum" do
    assert_difference('Fotosrespostum.count', -1) do
      delete :destroy, id: @fotosrespostum
    end

    assert_redirected_to fotosresposta_path
  end
end
