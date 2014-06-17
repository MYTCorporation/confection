require 'test_helper'

class OperaciosControllerTest < ActionController::TestCase
  setup do
    @operacio = operacios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:operacios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create operacio" do
    assert_difference('Operacio.count') do
      post :create, operacio: { Descripcion: @operacio.Descripcion, Referencia: @operacio.Referencia, TiempoEstandar: @operacio.TiempoEstandar, area: @operacio.area, cantidadProceso: @operacio.cantidadProceso, instructorCargo: @operacio.instructorCargo, insumos: @operacio.insumos, maquinas: @operacio.maquinas, tiposTelas: @operacio.tiposTelas }
    end

    assert_redirected_to operacio_path(assigns(:operacio))
  end

  test "should show operacio" do
    get :show, id: @operacio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @operacio
    assert_response :success
  end

  test "should update operacio" do
    patch :update, id: @operacio, operacio: { Descripcion: @operacio.Descripcion, Referencia: @operacio.Referencia, TiempoEstandar: @operacio.TiempoEstandar, area: @operacio.area, cantidadProceso: @operacio.cantidadProceso, instructorCargo: @operacio.instructorCargo, insumos: @operacio.insumos, maquinas: @operacio.maquinas, tiposTelas: @operacio.tiposTelas }
    assert_redirected_to operacio_path(assigns(:operacio))
  end

  test "should destroy operacio" do
    assert_difference('Operacio.count', -1) do
      delete :destroy, id: @operacio
    end

    assert_redirected_to operacios_path
  end
end
