require 'test_helper'

class OperariaControllerTest < ActionController::TestCase
  setup do
    @operarium = operaria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:operaria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create operarium" do
    assert_difference('Operarium.count') do
      post :create, operarium: { Apellidos: @operarium.Apellidos, Calificacion: @operarium.Calificacion, Celular: @operarium.Celular, Correo: @operarium.Correo, Direccion: @operarium.Direccion, DirectorArea: @operarium.DirectorArea, Fecha: @operarium.Fecha, Fecha: @operarium.Fecha, Final: @operarium.Final, Genero: @operarium.Genero, Inicial: @operarium.Inicial, Inicio: @operarium.Inicio, Nombres: @operarium.Nombres, Numerodocumento: @operarium.Numerodocumento, Telefono: @operarium.Telefono, Tipodocumentos_id: @operarium.Tipodocumentos_id, instructors_id: @operarium.instructors_id }
    end

    assert_redirected_to operarium_path(assigns(:operarium))
  end

  test "should show operarium" do
    get :show, id: @operarium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @operarium
    assert_response :success
  end

  test "should update operarium" do
    patch :update, id: @operarium, operarium: { Apellidos: @operarium.Apellidos, Calificacion: @operarium.Calificacion, Celular: @operarium.Celular, Correo: @operarium.Correo, Direccion: @operarium.Direccion, DirectorArea: @operarium.DirectorArea, Fecha: @operarium.Fecha, Fecha: @operarium.Fecha, Final: @operarium.Final, Genero: @operarium.Genero, Inicial: @operarium.Inicial, Inicio: @operarium.Inicio, Nombres: @operarium.Nombres, Numerodocumento: @operarium.Numerodocumento, Telefono: @operarium.Telefono, Tipodocumentos_id: @operarium.Tipodocumentos_id, instructors_id: @operarium.instructors_id }
    assert_redirected_to operarium_path(assigns(:operarium))
  end

  test "should destroy operarium" do
    assert_difference('Operarium.count', -1) do
      delete :destroy, id: @operarium
    end

    assert_redirected_to operaria_path
  end
end
