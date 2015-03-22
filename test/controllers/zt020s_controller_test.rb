require 'test_helper'

class Zt020sControllerTest < ActionController::TestCase
  setup do
    @zt020 = zt020s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zt020s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zt020" do
    assert_difference('Zt020.count') do
      post :create, zt020: { IDUSER: @zt020.IDUSER, TXNAME: @zt020.TXNAME, TXPASSWORD: @zt020.TXPASSWORD }
    end

    assert_redirected_to zt020_path(assigns(:zt020))
  end

  test "should show zt020" do
    get :show, id: @zt020
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zt020
    assert_response :success
  end

  test "should update zt020" do
    patch :update, id: @zt020, zt020: { IDUSER: @zt020.IDUSER, TXNAME: @zt020.TXNAME, TXPASSWORD: @zt020.TXPASSWORD }
    assert_redirected_to zt020_path(assigns(:zt020))
  end

  test "should destroy zt020" do
    assert_difference('Zt020.count', -1) do
      delete :destroy, id: @zt020
    end

    assert_redirected_to zt020s_path
  end
end
