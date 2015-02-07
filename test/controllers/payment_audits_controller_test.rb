require 'test_helper'

class PaymentAuditsControllerTest < ActionController::TestCase
  setup do
    @payment_audit = payment_audits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payment_audits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payment_audit" do
    assert_difference('PaymentAudit.count') do
      post :create, payment_audit: { amount_from: @payment_audit.amount_from, amount_to: @payment_audit.amount_to, datetime: @payment_audit.datetime, payment_id: @payment_audit.payment_id, payment_type_from: @payment_audit.payment_type_from, payment_type_to: @payment_audit.payment_type_to }
    end

    assert_redirected_to payment_audit_path(assigns(:payment_audit))
  end

  test "should show payment_audit" do
    get :show, id: @payment_audit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payment_audit
    assert_response :success
  end

  test "should update payment_audit" do
    patch :update, id: @payment_audit, payment_audit: { amount_from: @payment_audit.amount_from, amount_to: @payment_audit.amount_to, datetime: @payment_audit.datetime, payment_id: @payment_audit.payment_id, payment_type_from: @payment_audit.payment_type_from, payment_type_to: @payment_audit.payment_type_to }
    assert_redirected_to payment_audit_path(assigns(:payment_audit))
  end

  test "should destroy payment_audit" do
    assert_difference('PaymentAudit.count', -1) do
      delete :destroy, id: @payment_audit
    end

    assert_redirected_to payment_audits_path
  end
end
