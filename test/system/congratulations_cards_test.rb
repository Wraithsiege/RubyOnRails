require "application_system_test_case"

class CongratulationsCardsTest < ApplicationSystemTestCase
  setup do
    @congratulations_card = congratulations_cards(:one)
  end

  test "visiting the index" do
    visit congratulations_cards_url
    assert_selector "h1", text: "Congratulations cards"
  end

  test "should create congratulations card" do
    visit congratulations_cards_url
    click_on "New congratulations card"

    fill_in "Price", with: @congratulations_card.price
    fill_in "Type", with: @congratulations_card.type
    click_on "Create Congratulations card"

    assert_text "Congratulations card was successfully created"
    click_on "Back"
  end

  test "should update Congratulations card" do
    visit congratulations_card_url(@congratulations_card)
    click_on "Edit this congratulations card", match: :first

    fill_in "Price", with: @congratulations_card.price
    fill_in "Type", with: @congratulations_card.type
    click_on "Update Congratulations card"

    assert_text "Congratulations card was successfully updated"
    click_on "Back"
  end

  test "should destroy Congratulations card" do
    visit congratulations_card_url(@congratulations_card)
    click_on "Destroy this congratulations card", match: :first

    assert_text "Congratulations card was successfully destroyed"
  end
end
