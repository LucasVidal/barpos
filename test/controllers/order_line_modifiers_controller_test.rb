require 'test_helper'

class OrderLineModifiersControllerTest < ActionController::TestCase
  setup do
    @order_line_modifier = order_line_modifiers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_line_modifiers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_line_modifier" do
    assert_difference('OrderLineModifier.count') do
      post :create, order_line_modifier: { modifier_id: @order_line_modifier.modifier_id, order_line_id: @order_line_modifier.order_line_id }
    end

    assert_redirected_to order_line_modifier_path(assigns(:order_line_modifier))
  end

  test "should show order_line_modifier" do
    get :show, id: @order_line_modifier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_line_modifier
    assert_response :success
  end

  test "should update order_line_modifier" do
    patch :update, id: @order_line_modifier, order_line_modifier: { modifier_id: @order_line_modifier.modifier_id, order_line_id: @order_line_modifier.order_line_id }
    assert_redirected_to order_line_modifier_path(assigns(:order_line_modifier))
  end

  test "should destroy order_line_modifier" do
    assert_difference('OrderLineModifier.count', -1) do
      delete :destroy, id: @order_line_modifier
    end

    assert_redirected_to order_line_modifiers_path
  end
end
