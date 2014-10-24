require 'test_helper'

class MatchesControllerTest < ActionController::TestCase
  setup do
    @match = matches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match" do
    assert_difference('Match.count') do
      post :create, match: { doubles: @match.doubles, match_date: @match.match_date, t11: @match.t11, t12: @match.t12, t1s: @match.t1s, t21: @match.t21, t22: @match.t22, t2s: @match.t2s }
    end

    assert_redirected_to match_path(assigns(:match))
  end

  test "should show match" do
    get :show, id: @match
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match
    assert_response :success
  end

  test "should update match" do
    patch :update, id: @match, match: { doubles: @match.doubles, match_date: @match.match_date, t11: @match.t11, t12: @match.t12, t1s: @match.t1s, t21: @match.t21, t22: @match.t22, t2s: @match.t2s }
    assert_redirected_to match_path(assigns(:match))
  end

  test "should destroy match" do
    assert_difference('Match.count', -1) do
      delete :destroy, id: @match
    end

    assert_redirected_to matches_path
  end
end
