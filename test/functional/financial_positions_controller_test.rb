require 'test_helper'

class FinancialPositionsControllerTest < ActionController::TestCase
  setup do
    @financial_position = financial_positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:financial_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create financial_position" do
    assert_difference('FinancialPosition.count') do
      post :create, :financial_position => @financial_position.attributes
    end

    assert_redirected_to financial_position_path(assigns(:financial_position))
  end

  test "should show financial_position" do
    get :show, :id => @financial_position.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @financial_position.to_param
    assert_response :success
  end

  test "should update financial_position" do
    put :update, :id => @financial_position.to_param, :financial_position => @financial_position.attributes
    assert_redirected_to financial_position_path(assigns(:financial_position))
  end

  test "should destroy financial_position" do
    assert_difference('FinancialPosition.count', -1) do
      delete :destroy, :id => @financial_position.to_param
    end

    assert_redirected_to financial_positions_path
  end
end
