require 'test_helper'

class KittyTransControllerTest < ActionController::TestCase
  setup do
    @kitty_tran = kitty_trans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kitty_trans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kitty_tran" do
    assert_difference('KittyTran.count') do
      post :create, kitty_tran: { amount: @kitty_tran.amount, credit: @kitty_tran.credit, mID: @kitty_tran.mID, pID: @kitty_tran.pID }
    end

    assert_redirected_to kitty_tran_path(assigns(:kitty_tran))
  end

  test "should show kitty_tran" do
    get :show, id: @kitty_tran
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kitty_tran
    assert_response :success
  end

  test "should update kitty_tran" do
    patch :update, id: @kitty_tran, kitty_tran: { amount: @kitty_tran.amount, credit: @kitty_tran.credit, mID: @kitty_tran.mID, pID: @kitty_tran.pID }
    assert_redirected_to kitty_tran_path(assigns(:kitty_tran))
  end

  test "should destroy kitty_tran" do
    assert_difference('KittyTran.count', -1) do
      delete :destroy, id: @kitty_tran
    end

    assert_redirected_to kitty_trans_path
  end
end
