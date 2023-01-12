require "test_helper"

class WritingAccessoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @writing_accessory = writing_accessories(:one)
  end

  test "should get index" do
    get writing_accessories_url
    assert_response :success
  end

  test "should get new" do
    get new_writing_accessory_url
    assert_response :success
  end

  test "should create writing_accessory" do
    assert_difference("WritingAccessory.count") do
      post writing_accessories_url, params: { writing_accessory: { color: @writing_accessory.color, manufacturer: @writing_accessory.manufacturer, price: @writing_accessory.price, type: @writing_accessory.type } }
    end

    assert_redirected_to writing_accessory_url(WritingAccessory.last)
  end

  test "should show writing_accessory" do
    get writing_accessory_url(@writing_accessory)
    assert_response :success
  end

  test "should get edit" do
    get edit_writing_accessory_url(@writing_accessory)
    assert_response :success
  end

  test "should update writing_accessory" do
    patch writing_accessory_url(@writing_accessory), params: { writing_accessory: { color: @writing_accessory.color, manufacturer: @writing_accessory.manufacturer, price: @writing_accessory.price, type: @writing_accessory.type } }
    assert_redirected_to writing_accessory_url(@writing_accessory)
  end

  test "should destroy writing_accessory" do
    assert_difference("WritingAccessory.count", -1) do
      delete writing_accessory_url(@writing_accessory)
    end

    assert_redirected_to writing_accessories_url
  end
end
