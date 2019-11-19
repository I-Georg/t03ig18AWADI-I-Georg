require "application_system_test_case"

class ChocolateBarsTest < ApplicationSystemTestCase
  setup do
    @chocolate_bar = chocolate_bars(:one)
  end

  test "visiting the index" do
    visit chocolate_bars_url
    assert_selector "h1", text: "Chocolate Bars"
  end

  test "creating a Chocolate bar" do
    visit chocolate_bars_url
    click_on "New Chocolate Bar"

    fill_in "Bar name", with: @chocolate_bar.bar_name
    fill_in "Bean origin", with: @chocolate_bar.bean_origin
    fill_in "Cocoa percent", with: @chocolate_bar.cocoa_percent
    fill_in "Compamny maker", with: @chocolate_bar.compamny_maker
    fill_in "Price", with: @chocolate_bar.price
    fill_in "Quantity", with: @chocolate_bar.quantity
    fill_in "Review date", with: @chocolate_bar.review_date
    click_on "Create Chocolate bar"

    assert_text "Chocolate bar was successfully created"
    click_on "Back"
  end

  test "updating a Chocolate bar" do
    visit chocolate_bars_url
    click_on "Edit", match: :first

    fill_in "Bar name", with: @chocolate_bar.bar_name
    fill_in "Bean origin", with: @chocolate_bar.bean_origin
    fill_in "Cocoa percent", with: @chocolate_bar.cocoa_percent
    fill_in "Compamny maker", with: @chocolate_bar.compamny_maker
    fill_in "Price", with: @chocolate_bar.price
    fill_in "Quantity", with: @chocolate_bar.quantity
    fill_in "Review date", with: @chocolate_bar.review_date
    click_on "Update Chocolate bar"

    assert_text "Chocolate bar was successfully updated"
    click_on "Back"
  end

  test "destroying a Chocolate bar" do
    visit chocolate_bars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chocolate bar was successfully destroyed"
  end
end
