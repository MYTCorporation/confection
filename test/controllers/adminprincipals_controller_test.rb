require 'test_helper'

class AdminprincipalsControllerTest < ActionController::TestCase
  setup do
    @adminprincipal = adminprincipals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adminprincipals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adminprincipal" do
    assert_difference('Adminprincipal.count') do
      post :create, adminprincipal: {  }
    end

    assert_redirected_to adminprincipal_path(assigns(:adminprincipal))
  end

  test "should show adminprincipal" do
    get :show, id: @adminprincipal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adminprincipal
    assert_response :success
  end

  test "should update adminprincipal" do
    patch :update, id: @adminprincipal, adminprincipal: {  }
    assert_redirected_to adminprincipal_path(assigns(:adminprincipal))
  end

  test "should destroy adminprincipal" do
    assert_difference('Adminprincipal.count', -1) do
      delete :destroy, id: @adminprincipal
    end

    assert_redirected_to adminprincipals_path
  end
end
