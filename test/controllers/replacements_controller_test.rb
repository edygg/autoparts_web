require 'test_helper'

class ReplacementsControllerTest < ActionController::TestCase
  setup do
    @replacement = replacements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:replacements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create replacement" do
    assert_difference('Replacement.count') do
      post :create, replacement: { name: @replacement.name, purchase_price: @replacement.purchase_price, sale_price: @replacement.sale_price, units_in_stock: @replacement.units_in_stock }
    end

    assert_redirected_to replacement_path(assigns(:replacement))
  end

  test "should show replacement" do
    get :show, id: @replacement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @replacement
    assert_response :success
  end

  test "should update replacement" do
    patch :update, id: @replacement, replacement: { name: @replacement.name, purchase_price: @replacement.purchase_price, sale_price: @replacement.sale_price, units_in_stock: @replacement.units_in_stock }
    assert_redirected_to replacement_path(assigns(:replacement))
  end

  test "should destroy replacement" do
    assert_difference('Replacement.count', -1) do
      delete :destroy, id: @replacement
    end

    assert_redirected_to replacements_path
  end
end
