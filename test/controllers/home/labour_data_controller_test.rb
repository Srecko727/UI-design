require "test_helper"

class Home::LabourDataControllerTest < ActionDispatch::IntegrationTest
  test "should get unemployment" do
    get home_labour_data_unemployment_url
    assert_response :success
  end

  test "should get labourForce" do
    get home_labour_data_labourForce_url
    assert_response :success
  end

  test "should get employment" do
    get home_labour_data_employment_url
    assert_response :success
  end
end
