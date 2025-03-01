require "test_helper"

class FacilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @facility = facilities(:one)
  end

  test "should get index" do
    get facilities_url, as: :json
    assert_response :success
  end

  test "should create facility" do
    assert_difference("Facility.count") do
      post facilities_url, params: { facility: { facility_name: @facility.facility_name } }, as: :json
    end

    assert_response :created
  end

  test "should show facility" do
    get facility_url(@facility), as: :json
    assert_response :success
  end

  test "should update facility" do
    patch facility_url(@facility), params: { facility: { facility_name: @facility.facility_name } }, as: :json
    assert_response :success
  end

  test "should destroy facility" do
    assert_difference("Facility.count", -1) do
      delete facility_url(@facility), as: :json
    end

    assert_response :no_content
  end
end
