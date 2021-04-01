require "test_helper"

class Home::OtherDataControllerTest < ActionDispatch::IntegrationTest
  test "should get crime_labour" do
    get home_other_data_crime_labour_url
    assert_response :success
  end

  test "should get crime_covid" do
    get home_other_data_crime_covid_url
    assert_response :success
  end
end
