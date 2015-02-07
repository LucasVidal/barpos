require 'test_helper'

class ProductModifiersControllerTest < ActionController::TestCase
  setup do
    @product_modifier = product_modifiers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_modifiers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_modifier" do
    assert_difference('ProductModifier.count') do
      post :create, product_modifier: { modifier_id: @product_modifier.modifier_id, product_id: @product_modifier.product_id }
    end

    assert_redirected_to product_modifier_path(assigns(:product_modifier))
  end

  test "should show product_modifier" do
    get :show, id: @product_modifier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_modifier
    assert_response :success
  end

  test "should update product_modifier" do
    patch :update, id: @product_modifier, product_modifier: { modifier_id: @product_modifier.modifier_id, product_id: @product_modifier.product_id }
    assert_redirected_to product_modifier_path(assigns(:product_modifier))
  end

  test "should destroy product_modifier" do
    assert_difference('ProductModifier.count', -1) do
      delete :destroy, id: @product_modifier
    end

    assert_redirected_to product_modifiers_path
  end
end
