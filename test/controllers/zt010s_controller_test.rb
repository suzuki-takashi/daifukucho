require 'test_helper'

class Zt010sControllerTest < ActionController::TestCase
  setup do
    @zt010 = zt010s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zt010s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zt010" do
    assert_difference('Zt010.count') do
      post :create, zt010: { IDVARIANT: @zt010.IDVARIANT, TXNAME: @zt010.TXNAME, TXREMARKS: @zt010.TXREMARKS, TXTYPE: @zt010.TXTYPE, TXVALUE: @zt010.TXVALUE }
    end

    assert_redirected_to zt010_path(assigns(:zt010))
  end

  test "should show zt010" do
    get :show, id: @zt010
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zt010
    assert_response :success
  end

  test "should update zt010" do
    patch :update, id: @zt010, zt010: { IDVARIANT: @zt010.IDVARIANT, TXNAME: @zt010.TXNAME, TXREMARKS: @zt010.TXREMARKS, TXTYPE: @zt010.TXTYPE, TXVALUE: @zt010.TXVALUE }
    assert_redirected_to zt010_path(assigns(:zt010))
  end

  test "should destroy zt010" do
    assert_difference('Zt010.count', -1) do
      delete :destroy, id: @zt010
    end

    assert_redirected_to zt010s_path
  end
end
