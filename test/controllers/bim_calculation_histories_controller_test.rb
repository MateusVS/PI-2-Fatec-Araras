require "test_helper"

class BimCalculationHistoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bim_calculation_histories_index_url
    assert_response :success
  end

  test "should get create" do
    get bim_calculation_histories_create_url
    assert_response :success
  end

  test "should get update" do
    get bim_calculation_histories_update_url
    assert_response :success
  end

  test "should get destroy" do
    get bim_calculation_histories_destroy_url
    assert_response :success
  end
end
