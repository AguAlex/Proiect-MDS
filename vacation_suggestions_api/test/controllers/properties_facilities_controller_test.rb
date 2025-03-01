require "test_helper"

class PropertiesFacilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @properties_facility = properties_facilities(:one)
  end

  test "should get index" do
    get properties_facilities_url, as: :json
    assert_response :success
  end

  test "should create properties_facility" do
    assert_difference("PropertiesFacility.count") do
      post properties_facilities_url, params: { properties_facility: { facility_id: @properties_facility.facility_id, property_id: @properties_facility.property_id } }, as: :json
    end

    assert_response :created
  end

  test "should show properties_facility" do
    get properties_facility_url(@properties_facility), as: :json
    assert_response :success
  end

  test "should update properties_facility" do
    patch properties_facility_url(@properties_facility), params: { properties_facility: { facility_id: @properties_facility.facility_id, property_id: @properties_facility.property_id } }, as: :json
    assert_response :success
  end

  test "should destroy properties_facility" do
    assert_difference("PropertiesFacility.count", -1) do
      delete properties_facility_url(@properties_facility), as: :json
    end

    assert_response :no_content
  end
end
