require 'test_helper'

class OrderAuditsControllerTest < ActionController::TestCase
  setup do
    @order_audit = order_audits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_audits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_audit" do
    assert_difference('OrderAudit.count') do
      post :create, order_audit: { datetime: @order_audit.datetime, order_id: @order_audit.order_id, status_from: @order_audit.status_from, status_to: @order_audit.status_to }
    end

    assert_redirected_to order_audit_path(assigns(:order_audit))
  end

  test "should show order_audit" do
    get :show, id: @order_audit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_audit
    assert_response :success
  end

  test "should update order_audit" do
    patch :update, id: @order_audit, order_audit: { datetime: @order_audit.datetime, order_id: @order_audit.order_id, status_from: @order_audit.status_from, status_to: @order_audit.status_to }
    assert_redirected_to order_audit_path(assigns(:order_audit))
  end

  test "should destroy order_audit" do
    assert_difference('OrderAudit.count', -1) do
      delete :destroy, id: @order_audit
    end

    assert_redirected_to order_audits_path
  end
end
