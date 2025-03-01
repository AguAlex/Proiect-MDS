require "test_helper"

class PackagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @package = packages(:one)
  end

  test "should get index" do
    get packages_url, as: :json
    assert_response :success
  end

  test "should create package" do
    assert_difference("Package.count") do
      post packages_url, params: { package: { end_date: @package.end_date, number_of_people: @package.number_of_people, price: @package.price, property_id: @package.property_id, start_date: @package.start_date, transportation_id: @package.transportation_id, user_id: @package.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show package" do
    get package_url(@package), as: :json
    assert_response :success
  end

  test "should update package" do
    patch package_url(@package), params: { package: { end_date: @package.end_date, number_of_people: @package.number_of_people, price: @package.price, property_id: @package.property_id, start_date: @package.start_date, transportation_id: @package.transportation_id, user_id: @package.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy package" do
    assert_difference("Package.count", -1) do
      delete package_url(@package), as: :json
    end

    assert_response :no_content
  end
end
