require 'test_helper'

class MililitrosControllerTest < ActionController::TestCase
  setup do
    @mililitro = mililitros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mililitros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mililitro" do
    assert_difference('Mililitro.count') do
      post :create, mililitro: { descripcion: @mililitro.descripcion }
    end

    assert_redirected_to mililitro_path(assigns(:mililitro))
  end

  test "should show mililitro" do
    get :show, id: @mililitro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mililitro
    assert_response :success
  end

  test "should update mililitro" do
    patch :update, id: @mililitro, mililitro: { descripcion: @mililitro.descripcion }
    assert_redirected_to mililitro_path(assigns(:mililitro))
  end

  test "should destroy mililitro" do
    assert_difference('Mililitro.count', -1) do
      delete :destroy, id: @mililitro
    end

    assert_redirected_to mililitros_path
  end
end
