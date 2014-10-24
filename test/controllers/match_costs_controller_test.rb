require 'test_helper'

class MatchCostsControllerTest < ActionController::TestCase
  setup do
    @match_cost = match_costs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:match_costs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match_cost" do
    assert_difference('MatchCost.count') do
      post :create, match_cost: { cost_code: @match_cost.cost_code, mID: @match_cost.mID }
    end

    assert_redirected_to match_cost_path(assigns(:match_cost))
  end

  test "should show match_cost" do
    get :show, id: @match_cost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match_cost
    assert_response :success
  end

  test "should update match_cost" do
    patch :update, id: @match_cost, match_cost: { cost_code: @match_cost.cost_code, mID: @match_cost.mID }
    assert_redirected_to match_cost_path(assigns(:match_cost))
  end

  test "should destroy match_cost" do
    assert_difference('MatchCost.count', -1) do
      delete :destroy, id: @match_cost
    end

    assert_redirected_to match_costs_path
  end
end
