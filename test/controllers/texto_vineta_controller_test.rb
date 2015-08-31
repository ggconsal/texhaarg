require 'test_helper'

class TextoVinetaControllerTest < ActionController::TestCase
  setup do
    @texto_vinetum = texto_vineta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:texto_vineta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create texto_vinetum" do
    assert_difference('TextoVinetum.count') do
      post :create, texto_vinetum: { texto_id: @texto_vinetum.texto_id, tve_texto: @texto_vinetum.tve_texto }
    end

    assert_redirected_to texto_vinetum_path(assigns(:texto_vinetum))
  end

  test "should show texto_vinetum" do
    get :show, id: @texto_vinetum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @texto_vinetum
    assert_response :success
  end

  test "should update texto_vinetum" do
    patch :update, id: @texto_vinetum, texto_vinetum: { texto_id: @texto_vinetum.texto_id, tve_texto: @texto_vinetum.tve_texto }
    assert_redirected_to texto_vinetum_path(assigns(:texto_vinetum))
  end

  test "should destroy texto_vinetum" do
    assert_difference('TextoVinetum.count', -1) do
      delete :destroy, id: @texto_vinetum
    end

    assert_redirected_to texto_vineta_path
  end
end
