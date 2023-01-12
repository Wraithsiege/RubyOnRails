require "test_helper"

class CongratulationsCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @congratulations_card = congratulations_cards(:one)
  end

  test "should get index" do
    get congratulations_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_congratulations_card_url
    assert_response :success
  end

  test "should create congratulations_card" do
    assert_difference("CongratulationsCard.count") do
      post congratulations_cards_url, params: { congratulations_card: { price: @congratulations_card.price, type: @congratulations_card.type } }
    end

    assert_redirected_to congratulations_card_url(CongratulationsCard.last)
  end

  test "should show congratulations_card" do
    get congratulations_card_url(@congratulations_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_congratulations_card_url(@congratulations_card)
    assert_response :success
  end

  test "should update congratulations_card" do
    patch congratulations_card_url(@congratulations_card), params: { congratulations_card: { price: @congratulations_card.price, type: @congratulations_card.type } }
    assert_redirected_to congratulations_card_url(@congratulations_card)
  end

  test "should destroy congratulations_card" do
    assert_difference("CongratulationsCard.count", -1) do
      delete congratulations_card_url(@congratulations_card)
    end

    assert_redirected_to congratulations_cards_url
  end
end
