require 'test_helper'

class ChocolateBarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chocolate_bar = chocolate_bars(:one)
  end

  test "should get index" do
    get chocolate_bars_url
    assert_response :success
  end

  test "should get new" do
    get new_chocolate_bar_url
    assert_response :success
  end

 # test "should create chocolate_bar" do
 #   assert_difference('ChocolateBar.count') do
  #    post chocolate_bars_url, params: { chocolate_bar: { bar_name: @chocolate_bar.bar_name, cocoa_percent: @chocolate_bar.cocoa_percent, company_maker: @chocolate_bar.company_maker, price: #@chocolate_bar.price, review_date: @chocolate_bar.review_date } }
   # end

    #assert_redirected_to chocolate_bar_url(ChocolateBar.last)
  #end

  test "should show chocolate_bar" do
    get chocolate_bar_url(@chocolate_bar)
    assert_response :success
  end

  test "should get edit" do
    get edit_chocolate_bar_url(@chocolate_bar)
    assert_response :success
  end

  test "should update chocolate_bar" do
    patch chocolate_bar_url(@chocolate_bar), params: { chocolate_bar: { bar_name: @chocolate_bar.bar_name, cocoa_percent: @chocolate_bar.cocoa_percent, company_maker: @chocolate_bar.company_maker, price: @chocolate_bar.price, review_date: @chocolate_bar.review_date } }
    assert_response :success
  end

 # test "should destroy chocolate_bar" do
  #  assert_difference('ChocolateBar.count', -1) do
   #   delete chocolate_bar_url(@chocolate_bar)
   # end

   # assert_redirected_to chocolate_bars_url
 # end
end
