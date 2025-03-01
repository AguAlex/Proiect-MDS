require "test_helper"

class TransportationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transportation = transportations(:one)
  end

  test "should get index" do
    get transportations_url, as: :json
    assert_response :success
  end

  test "should create transportation" do
    assert_difference("Transportation.count") do
      post transportations_url, params: { transportation: { city_id: @transportation.city_id, company_name: @transportation.company_name, departure_location: @transportation.departure_location, duration: @transportation.duration, price: @transportation.price, type: @transportation.type } }, as: :json
    end

    assert_response :created
  end

  test "should show transportation" do
    get transportation_url(@transportation), as: :json
    assert_response :success
  end

  test "should update transportation" do
    patch transportation_url(@transportation), params: { transportation: { city_id: @transportation.city_id, company_name: @transportation.company_name, departure_location: @transportation.departure_location, duration: @transportation.duration, price: @transportation.price, type: @transportation.type } }, as: :json
    assert_response :success
  end

  test "should destroy transportation" do
    assert_difference("Transportation.count", -1) do
      delete transportation_url(@transportation), as: :json
    end

    assert_response :no_content
  end
end
