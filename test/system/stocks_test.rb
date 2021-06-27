require "application_system_test_case"

class StocksTest < ApplicationSystemTestCase
  setup do
    @stock = stocks(:one)
  end

  test "visiting the index" do
    visit stocks_url
    assert_selector "h1", text: "Stocks"
  end

  test "creating a Stock" do
    visit stocks_url
    click_on "New Stock"

    fill_in "Day close", with: @stock.day_close
    fill_in "Day high", with: @stock.day_high
    fill_in "Day low", with: @stock.day_low
    fill_in "Day open", with: @stock.day_open
    fill_in "Minute close", with: @stock.minute_close
    fill_in "Minute high", with: @stock.minute_high
    fill_in "Minute low", with: @stock.minute_low
    fill_in "Minute open", with: @stock.minute_open
    fill_in "Name", with: @stock.name
    fill_in "Price", with: @stock.price
    fill_in "Symbol", with: @stock.symbol
    fill_in "Type", with: @stock.type
    click_on "Create Stock"

    assert_text "Stock was successfully created"
    click_on "Back"
  end

  test "updating a Stock" do
    visit stocks_url
    click_on "Edit", match: :first

    fill_in "Day close", with: @stock.day_close
    fill_in "Day high", with: @stock.day_high
    fill_in "Day low", with: @stock.day_low
    fill_in "Day open", with: @stock.day_open
    fill_in "Minute close", with: @stock.minute_close
    fill_in "Minute high", with: @stock.minute_high
    fill_in "Minute low", with: @stock.minute_low
    fill_in "Minute open", with: @stock.minute_open
    fill_in "Name", with: @stock.name
    fill_in "Price", with: @stock.price
    fill_in "Symbol", with: @stock.symbol
    fill_in "Type", with: @stock.type
    click_on "Update Stock"

    assert_text "Stock was successfully updated"
    click_on "Back"
  end

  test "destroying a Stock" do
    visit stocks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stock was successfully destroyed"
  end
end
