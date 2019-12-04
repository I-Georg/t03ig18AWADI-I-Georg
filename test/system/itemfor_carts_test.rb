require "application_system_test_case"

class ItemforCartsTest < ApplicationSystemTestCase
  setup do
    @itemfor_cart = itemfor_carts(:one)
  end

  test "visiting the index" do
    visit itemfor_carts_url
    assert_selector "h1", text: "Itemfor Carts"
  end

  test "creating a Itemfor cart" do
    visit itemfor_carts_url
    click_on "New Itemfor Cart"

    fill_in "Cart", with: @itemfor_cart.cart_id
    fill_in "Chocolate bar", with: @itemfor_cart.chocolate_bar_id
    click_on "Create Itemfor cart"

    assert_text "Itemfor cart was successfully created"
    click_on "Back"
  end

  test "updating a Itemfor cart" do
    visit itemfor_carts_url
    click_on "Edit", match: :first

    fill_in "Cart", with: @itemfor_cart.cart_id
    fill_in "Chocolate bar", with: @itemfor_cart.chocolate_bar_id
    click_on "Update Itemfor cart"

    assert_text "Itemfor cart was successfully updated"
    click_on "Back"
  end

  test "destroying a Itemfor cart" do
    visit itemfor_carts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Itemfor cart was successfully destroyed"
  end
end
