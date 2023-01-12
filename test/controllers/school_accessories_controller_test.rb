require "test_helper"

class SchoolAccessoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @school_accessory = school_accessories(:one)
  end

  test "should get index" do
    get school_accessories_url
    assert_response :success
  end

  test "should get new" do
    get new_school_accessory_url
    assert_response :success
  end

  test "should create school_accessory" do
    assert_difference("SchoolAccessory.count") do
      post school_accessories_url, params: { school_accessory: { color: @school_accessory.color, manufacturer: @school_accessory.manufacturer, price: @school_accessory.price, type: @school_accessory.type } }
    end

    assert_redirected_to school_accessory_url(SchoolAccessory.last)
  end

  test "should show school_accessory" do
    get school_accessory_url(@school_accessory)
    assert_response :success
  end

  test "should get edit" do
    get edit_school_accessory_url(@school_accessory)
    assert_response :success
  end

  test "should update school_accessory" do
    patch school_accessory_url(@school_accessory), params: { school_accessory: { color: @school_accessory.color, manufacturer: @school_accessory.manufacturer, price: @school_accessory.price, type: @school_accessory.type } }
    assert_redirected_to school_accessory_url(@school_accessory)
  end

  test "should destroy school_accessory" do
    assert_difference("SchoolAccessory.count", -1) do
      delete school_accessory_url(@school_accessory)
    end

    assert_redirected_to school_accessories_url
  end
end
