require "application_system_test_case"

class PositionsTest < ApplicationSystemTestCase
  setup do
    @position = positions(:one)
  end

  test "visiting the index" do
    visit positions_url
    assert_selector "h1", text: "Positions"
  end

  test "creating a Position" do
    visit positions_url
    click_on "New Position"

    fill_in "Bought price", with: @position.bought_price
    fill_in "Day change", with: @position.day_change
    fill_in "Minute change", with: @position.minute_change
    fill_in "Number of positions", with: @position.number_of_positions
    fill_in "Price", with: @position.price
    fill_in "Purchase date", with: @position.purchase_date
    fill_in "Symbol", with: @position.symbol
    click_on "Create Position"

    assert_text "Position was successfully created"
    click_on "Back"
  end

  test "updating a Position" do
    visit positions_url
    click_on "Edit", match: :first

    fill_in "Bought price", with: @position.bought_price
    fill_in "Day change", with: @position.day_change
    fill_in "Minute change", with: @position.minute_change
    fill_in "Number of positions", with: @position.number_of_positions
    fill_in "Price", with: @position.price
    fill_in "Purchase date", with: @position.purchase_date
    fill_in "Symbol", with: @position.symbol
    click_on "Update Position"

    assert_text "Position was successfully updated"
    click_on "Back"
  end

  test "destroying a Position" do
    visit positions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Position was successfully destroyed"
  end
end
