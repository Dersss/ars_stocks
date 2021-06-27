require "application_system_test_case"

class CryptosTest < ApplicationSystemTestCase
  setup do
    @crypto = cryptos(:one)
  end

  test "visiting the index" do
    visit cryptos_url
    assert_selector "h1", text: "Cryptos"
  end

  test "creating a Crypto" do
    visit cryptos_url
    click_on "New Crypto"

    fill_in "Day close", with: @crypto.day_close
    fill_in "Day high", with: @crypto.day_high
    fill_in "Day low", with: @crypto.day_low
    fill_in "Day open", with: @crypto.day_open
    fill_in "Minute close", with: @crypto.minute_close
    fill_in "Minute high", with: @crypto.minute_high
    fill_in "Minute low", with: @crypto.minute_low
    fill_in "Minute open", with: @crypto.minute_open
    fill_in "Name", with: @crypto.name
    fill_in "Price", with: @crypto.price
    fill_in "Symbol", with: @crypto.symbol
    click_on "Create Crypto"

    assert_text "Crypto was successfully created"
    click_on "Back"
  end

  test "updating a Crypto" do
    visit cryptos_url
    click_on "Edit", match: :first

    fill_in "Day close", with: @crypto.day_close
    fill_in "Day high", with: @crypto.day_high
    fill_in "Day low", with: @crypto.day_low
    fill_in "Day open", with: @crypto.day_open
    fill_in "Minute close", with: @crypto.minute_close
    fill_in "Minute high", with: @crypto.minute_high
    fill_in "Minute low", with: @crypto.minute_low
    fill_in "Minute open", with: @crypto.minute_open
    fill_in "Name", with: @crypto.name
    fill_in "Price", with: @crypto.price
    fill_in "Symbol", with: @crypto.symbol
    click_on "Update Crypto"

    assert_text "Crypto was successfully updated"
    click_on "Back"
  end

  test "destroying a Crypto" do
    visit cryptos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Crypto was successfully destroyed"
  end
end
