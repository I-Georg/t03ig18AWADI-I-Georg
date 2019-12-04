require "application_system_test_case"

class ProductCartsTest < ApplicationSystemTestCase
  setup do
    @product_cart = product_carts(:one)
  end

  test "visiting the index" do
    visit product_carts_url
    assert_selector "h1", text: "Product Carts"
  end

  test "creating a Product cart" do
    visit product_carts_url
    click_on "New Product Cart"

    click_on "Create Product cart"

    assert_text "Product cart was successfully created"
    click_on "Back"
  end

  test "updating a Product cart" do
    visit product_carts_url
    click_on "Edit", match: :first

    click_on "Update Product cart"

    assert_text "Product cart was successfully updated"
    click_on "Back"
  end

  test "destroying a Product cart" do
    visit product_carts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product cart was successfully destroyed"
  end
end
