require "application_system_test_case"

class OnBoardingsTest < ApplicationSystemTestCase
  setup do
    @on_boarding = on_boardings(:one)
  end

  test "visiting the index" do
    visit on_boardings_url
    assert_selector "h1", text: "On boardings"
  end

  test "should create on boarding" do
    visit on_boardings_url
    click_on "New on boarding"

    fill_in "Common freight", with: @on_boarding.common_freight
    fill_in "Contact method", with: @on_boarding.contact_method
    fill_in "Contact time", with: @on_boarding.contact_time
    fill_in "Current address", with: @on_boarding.current_address
    fill_in "Current address 2", with: @on_boarding.current_address_2
    fill_in "Current city", with: @on_boarding.current_city
    fill_in "Current country", with: @on_boarding.current_country
    fill_in "Current state", with: @on_boarding.current_state
    fill_in "Current status", with: @on_boarding.current_status
    fill_in "Current zip", with: @on_boarding.current_zip
    fill_in "Dob", with: @on_boarding.dob
    fill_in "Drive experience", with: @on_boarding.drive_experience
    fill_in "Emergency contact", with: @on_boarding.emergency_contact
    fill_in "Emergency phone", with: @on_boarding.emergency_phone
    fill_in "Endorsements", with: @on_boarding.endorsements
    fill_in "License", with: @on_boarding.license
    fill_in "Military", with: @on_boarding.military
    fill_in "Moving violations", with: @on_boarding.moving_violations
    fill_in "Preventable accidents", with: @on_boarding.preventable_accidents
    fill_in "Previous address", with: @on_boarding.previous_address
    fill_in "Previous address 2", with: @on_boarding.previous_address_2
    fill_in "Previous city", with: @on_boarding.previous_city
    fill_in "Previous country", with: @on_boarding.previous_country
    fill_in "Previous state", with: @on_boarding.previous_state
    fill_in "Previous zip", with: @on_boarding.previous_zip
    fill_in "Residence", with: @on_boarding.residence
    fill_in "Ssn sin", with: @on_boarding.ssn_sin
    fill_in "Team", with: @on_boarding.team
    fill_in "User", with: @on_boarding.user_id
    fill_in "Veteran", with: @on_boarding.veteran
    click_on "Create On boarding"

    assert_text "On boarding was successfully created"
    click_on "Back"
  end

  test "should update On boarding" do
    visit on_boarding_url(@on_boarding)
    click_on "Edit this on boarding", match: :first

    fill_in "Common freight", with: @on_boarding.common_freight
    fill_in "Contact method", with: @on_boarding.contact_method
    fill_in "Contact time", with: @on_boarding.contact_time
    fill_in "Current address", with: @on_boarding.current_address
    fill_in "Current address 2", with: @on_boarding.current_address_2
    fill_in "Current city", with: @on_boarding.current_city
    fill_in "Current country", with: @on_boarding.current_country
    fill_in "Current state", with: @on_boarding.current_state
    fill_in "Current status", with: @on_boarding.current_status
    fill_in "Current zip", with: @on_boarding.current_zip
    fill_in "Dob", with: @on_boarding.dob
    fill_in "Drive experience", with: @on_boarding.drive_experience
    fill_in "Emergency contact", with: @on_boarding.emergency_contact
    fill_in "Emergency phone", with: @on_boarding.emergency_phone
    fill_in "Endorsements", with: @on_boarding.endorsements
    fill_in "License", with: @on_boarding.license
    fill_in "Military", with: @on_boarding.military
    fill_in "Moving violations", with: @on_boarding.moving_violations
    fill_in "Preventable accidents", with: @on_boarding.preventable_accidents
    fill_in "Previous address", with: @on_boarding.previous_address
    fill_in "Previous address 2", with: @on_boarding.previous_address_2
    fill_in "Previous city", with: @on_boarding.previous_city
    fill_in "Previous country", with: @on_boarding.previous_country
    fill_in "Previous state", with: @on_boarding.previous_state
    fill_in "Previous zip", with: @on_boarding.previous_zip
    fill_in "Residence", with: @on_boarding.residence
    fill_in "Ssn sin", with: @on_boarding.ssn_sin
    fill_in "Team", with: @on_boarding.team
    fill_in "User", with: @on_boarding.user_id
    fill_in "Veteran", with: @on_boarding.veteran
    click_on "Update On boarding"

    assert_text "On boarding was successfully updated"
    click_on "Back"
  end

  test "should destroy On boarding" do
    visit on_boarding_url(@on_boarding)
    click_on "Destroy this on boarding", match: :first

    assert_text "On boarding was successfully destroyed"
  end
end
