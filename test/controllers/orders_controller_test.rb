require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @table = tables(:one)
    @order = orders(:one)
  end

  test "should get index" do
    get :index, params: { table_id: @table }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { table_id: @table }
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, params: { table_id: @table, order: @order.attributes }
    end

    assert_redirected_to table_order_path(@table, Order.last)
  end

  test "should show order" do
    get :show, params: { table_id: @table, id: @order }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { table_id: @table, id: @order }
    assert_response :success
  end

  test "should update order" do
    put :update, params: { table_id: @table, id: @order, order: @order.attributes }
    assert_redirected_to table_order_path(@table, Order.last)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, params: { table_id: @table, id: @order }
    end

    assert_redirected_to table_orders_path(@table)
  end
end
