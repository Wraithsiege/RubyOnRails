require "application_system_test_case"

class SchoolAccessoriesTest < ApplicationSystemTestCase
  setup do
    @school_accessory = school_accessories(:one)
  end

  test "visiting the index" do
    visit school_accessories_url
    assert_selector "h1", text: "School accessories"
  end

  test "should create school accessory" do
    visit school_accessories_url
    click_on "New school accessory"

    fill_in "Color", with: @school_accessory.color
    fill_in "Manufacturer", with: @school_accessory.manufacturer
    fill_in "Price", with: @school_accessory.price
    fill_in "Type", with: @school_accessory.type
    click_on "Create School accessory"

    assert_text "School accessory was successfully created"
    click_on "Back"
  end

  test "should update School accessory" do
    visit school_accessory_url(@school_accessory)
    click_on "Edit this school accessory", match: :first

    fill_in "Color", with: @school_accessory.color
    fill_in "Manufacturer", with: @school_accessory.manufacturer
    fill_in "Price", with: @school_accessory.price
    fill_in "Type", with: @school_accessory.type
    click_on "Update School accessory"

    assert_text "School accessory was successfully updated"
    click_on "Back"
  end

  test "should destroy School accessory" do
    visit school_accessory_url(@school_accessory)
    click_on "Destroy this school accessory", match: :first

    assert_text "School accessory was successfully destroyed"
  end
end
