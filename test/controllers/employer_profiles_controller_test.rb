require 'test_helper'

class EmployerProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employer_profile = employer_profiles(:one)
  end

  test "should get index" do
    get employer_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_employer_profile_url
    assert_response :success
  end

  test "should create employer_profile" do
    assert_difference('EmployerProfile.count') do
      post employer_profiles_url, params: { employer_profile: { business_name: @employer_profile.business_name, first_name: @employer_profile.first_name, last_name: @employer_profile.last_name } }
    end

    assert_redirected_to employer_profile_url(EmployerProfile.last)
  end

  test "should show employer_profile" do
    get employer_profile_url(@employer_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_employer_profile_url(@employer_profile)
    assert_response :success
  end

  test "should update employer_profile" do
    patch employer_profile_url(@employer_profile), params: { employer_profile: { business_name: @employer_profile.business_name, first_name: @employer_profile.first_name, last_name: @employer_profile.last_name } }
    assert_redirected_to employer_profile_url(@employer_profile)
  end

  test "should destroy employer_profile" do
    assert_difference('EmployerProfile.count', -1) do
      delete employer_profile_url(@employer_profile)
    end

    assert_redirected_to employer_profiles_url
  end
end
