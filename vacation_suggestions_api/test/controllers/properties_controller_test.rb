require "test_helper"

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get properties_url, as: :json
    assert_response :success
  end

  test "should create property" do
    assert_difference("Property.count") do
      post properties_url, params: { property: { city_id: @property.city_id, name: @property.name, rating: @property.rating, type: @property.type } }, as: :json
    end

    assert_response :created
  end

  test "should show property" do
    get property_url(@property), as: :json
    assert_response :success
  end

  test "should update property" do
    patch property_url(@property), params: { property: { city_id: @property.city_id, name: @property.name, rating: @property.rating, type: @property.type } }, as: :json
    assert_response :success
  end

  test "should destroy property" do
    assert_difference("Property.count", -1) do
      delete property_url(@property), as: :json
    end

    assert_response :no_content
  end
end
