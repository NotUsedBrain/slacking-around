require "application_system_test_case"

class EmployeeProfilesTest < ApplicationSystemTestCase
  setup do
    @employee_profile = employee_profiles(:one)
  end

  test "visiting the index" do
    visit employee_profiles_url
    assert_selector "h1", text: "Employee Profiles"
  end

  test "creating a Employee profile" do
    visit employee_profiles_url
    click_on "New Employee Profile"

    fill_in "Date of birth", with: @employee_profile.date_of_birth
    fill_in "First name", with: @employee_profile.first_name
    fill_in "Last name", with: @employee_profile.last_name
    click_on "Create Employee profile"

    assert_text "Employee profile was successfully created"
    click_on "Back"
  end

  test "updating a Employee profile" do
    visit employee_profiles_url
    click_on "Edit", match: :first

    fill_in "Date of birth", with: @employee_profile.date_of_birth
    fill_in "First name", with: @employee_profile.first_name
    fill_in "Last name", with: @employee_profile.last_name
    click_on "Update Employee profile"

    assert_text "Employee profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee profile" do
    visit employee_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee profile was successfully destroyed"
  end
end
