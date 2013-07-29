require 'test_helper'

class PerfumesControllerTest < ActionController::TestCase
  setup do
    @perfume = perfumes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:perfumes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create perfume" do
    assert_difference('Perfume.count') do
      post :create, perfume: { imagen_url: @perfume.imagen_url, mililitro_id: @perfume.mililitro_id, nombre: @perfume.nombre, precio: @perfume.precio, sexo_id: @perfume.sexo_id, tipo_id: @perfume.tipo_id }
    end

    assert_redirected_to perfume_path(assigns(:perfume))
  end

  test "should show perfume" do
    get :show, id: @perfume
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @perfume
    assert_response :success
  end

  test "should update perfume" do
    patch :update, id: @perfume, perfume: { imagen_url: @perfume.imagen_url, mililitro_id: @perfume.mililitro_id, nombre: @perfume.nombre, precio: @perfume.precio, sexo_id: @perfume.sexo_id, tipo_id: @perfume.tipo_id }
    assert_redirected_to perfume_path(assigns(:perfume))
  end

  test "should destroy perfume" do
    assert_difference('Perfume.count', -1) do
      delete :destroy, id: @perfume
    end

    assert_redirected_to perfumes_path
  end
end
