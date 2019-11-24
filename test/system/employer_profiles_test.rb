require "application_system_test_case"

class EmployerProfilesTest < ApplicationSystemTestCase
  setup do
    @employer_profile = employer_profiles(:one)
  end

  test "visiting the index" do
    visit employer_profiles_url
    assert_selector "h1", text: "Employer Profiles"
  end

  test "creating a Employer profile" do
    visit employer_profiles_url
    click_on "New Employer Profile"

    fill_in "Business name", with: @employer_profile.business_name
    fill_in "First name", with: @employer_profile.first_name
    fill_in "Last name", with: @employer_profile.last_name
    click_on "Create Employer profile"

    assert_text "Employer profile was successfully created"
    click_on "Back"
  end

  test "updating a Employer profile" do
    visit employer_profiles_url
    click_on "Edit", match: :first

    fill_in "Business name", with: @employer_profile.business_name
    fill_in "First name", with: @employer_profile.first_name
    fill_in "Last name", with: @employer_profile.last_name
    click_on "Update Employer profile"

    assert_text "Employer profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Employer profile" do
    visit employer_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employer profile was successfully destroyed"
  end
end
