require "application_system_test_case"

class WritingAccessoriesTest < ApplicationSystemTestCase
  setup do
    @writing_accessory = writing_accessories(:one)
  end

  test "visiting the index" do
    visit writing_accessories_url
    assert_selector "h1", text: "Writing accessories"
  end

  test "should create writing accessory" do
    visit writing_accessories_url
    click_on "New writing accessory"

    fill_in "Color", with: @writing_accessory.color
    fill_in "Manufacturer", with: @writing_accessory.manufacturer
    fill_in "Price", with: @writing_accessory.price
    fill_in "Type", with: @writing_accessory.type
    click_on "Create Writing accessory"

    assert_text "Writing accessory was successfully created"
    click_on "Back"
  end

  test "should update Writing accessory" do
    visit writing_accessory_url(@writing_accessory)
    click_on "Edit this writing accessory", match: :first

    fill_in "Color", with: @writing_accessory.color
    fill_in "Manufacturer", with: @writing_accessory.manufacturer
    fill_in "Price", with: @writing_accessory.price
    fill_in "Type", with: @writing_accessory.type
    click_on "Update Writing accessory"

    assert_text "Writing accessory was successfully updated"
    click_on "Back"
  end

  test "should destroy Writing accessory" do
    visit writing_accessory_url(@writing_accessory)
    click_on "Destroy this writing accessory", match: :first

    assert_text "Writing accessory was successfully destroyed"
  end
end
