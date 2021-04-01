require "test_helper"

class Home::CovidDataControllerTest < ActionDispatch::IntegrationTest
  test "should get cases" do
    get home_covid_data_cases_url
    assert_response :success
  end

  test "should get deaths" do
    get home_covid_data_deaths_url
    assert_response :success
  end

  test "should get hospitalizations" do
    get home_covid_data_hospitalizations_url
    assert_response :success
  end
end
