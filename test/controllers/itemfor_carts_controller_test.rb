require 'test_helper'

class ItemforCartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @itemfor_cart = itemfor_carts(:one)
  end

  test "should get index" do
    get itemfor_carts_url
    assert_response :success
  end

  test "should get new" do
    get new_itemfor_cart_url
    assert_response :success
  end

  test "should create itemfor_cart" do
    assert_difference('ItemforCart.count') do
      post itemfor_carts_url, params: { itemfor_cart: { cart_id: @itemfor_cart.cart_id, chocolate_bar_id: @itemfor_cart.chocolate_bar_id } }
    end

    assert_redirected_to itemfor_cart_url(ItemforCart.last)
  end

  test "should show itemfor_cart" do
    get itemfor_cart_url(@itemfor_cart)
    assert_response :success
  end

  test "should get edit" do
    get edit_itemfor_cart_url(@itemfor_cart)
    assert_response :success
  end

  test "should update itemfor_cart" do
    patch itemfor_cart_url(@itemfor_cart), params: { itemfor_cart: { cart_id: @itemfor_cart.cart_id, chocolate_bar_id: @itemfor_cart.chocolate_bar_id } }
    assert_redirected_to itemfor_cart_url(@itemfor_cart)
  end

  test "should destroy itemfor_cart" do
    assert_difference('ItemforCart.count', -1) do
      delete itemfor_cart_url(@itemfor_cart)
    end

    assert_redirected_to itemfor_carts_url
  end
end
