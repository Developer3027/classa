require "test_helper"

class OnBoardingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @on_boarding = on_boardings(:one)
  end

  test "should get index" do
    get on_boardings_url
    assert_response :success
  end

  test "should get new" do
    get new_on_boarding_url
    assert_response :success
  end

  test "should create on_boarding" do
    assert_difference("OnBoarding.count") do
      post on_boardings_url, params: { on_boarding: { common_freight: @on_boarding.common_freight, contact_method: @on_boarding.contact_method, contact_time: @on_boarding.contact_time, current_address: @on_boarding.current_address, current_address_2: @on_boarding.current_address_2, current_city: @on_boarding.current_city, current_country: @on_boarding.current_country, current_state: @on_boarding.current_state, current_status: @on_boarding.current_status, current_zip: @on_boarding.current_zip, dob: @on_boarding.dob, drive_experience: @on_boarding.drive_experience, emergency_contact: @on_boarding.emergency_contact, emergency_phone: @on_boarding.emergency_phone, endorsements: @on_boarding.endorsements, license: @on_boarding.license, military: @on_boarding.military, moving_violations: @on_boarding.moving_violations, preventable_accidents: @on_boarding.preventable_accidents, previous_address: @on_boarding.previous_address, previous_address_2: @on_boarding.previous_address_2, previous_city: @on_boarding.previous_city, previous_country: @on_boarding.previous_country, previous_state: @on_boarding.previous_state, previous_zip: @on_boarding.previous_zip, residence: @on_boarding.residence, ssn_sin: @on_boarding.ssn_sin, team: @on_boarding.team, user_id: @on_boarding.user_id, veteran: @on_boarding.veteran } }
    end

    assert_redirected_to on_boarding_url(OnBoarding.last)
  end

  test "should show on_boarding" do
    get on_boarding_url(@on_boarding)
    assert_response :success
  end

  test "should get edit" do
    get edit_on_boarding_url(@on_boarding)
    assert_response :success
  end

  test "should update on_boarding" do
    patch on_boarding_url(@on_boarding), params: { on_boarding: { common_freight: @on_boarding.common_freight, contact_method: @on_boarding.contact_method, contact_time: @on_boarding.contact_time, current_address: @on_boarding.current_address, current_address_2: @on_boarding.current_address_2, current_city: @on_boarding.current_city, current_country: @on_boarding.current_country, current_state: @on_boarding.current_state, current_status: @on_boarding.current_status, current_zip: @on_boarding.current_zip, dob: @on_boarding.dob, drive_experience: @on_boarding.drive_experience, emergency_contact: @on_boarding.emergency_contact, emergency_phone: @on_boarding.emergency_phone, endorsements: @on_boarding.endorsements, license: @on_boarding.license, military: @on_boarding.military, moving_violations: @on_boarding.moving_violations, preventable_accidents: @on_boarding.preventable_accidents, previous_address: @on_boarding.previous_address, previous_address_2: @on_boarding.previous_address_2, previous_city: @on_boarding.previous_city, previous_country: @on_boarding.previous_country, previous_state: @on_boarding.previous_state, previous_zip: @on_boarding.previous_zip, residence: @on_boarding.residence, ssn_sin: @on_boarding.ssn_sin, team: @on_boarding.team, user_id: @on_boarding.user_id, veteran: @on_boarding.veteran } }
    assert_redirected_to on_boarding_url(@on_boarding)
  end

  test "should destroy on_boarding" do
    assert_difference("OnBoarding.count", -1) do
      delete on_boarding_url(@on_boarding)
    end

    assert_redirected_to on_boardings_url
  end
end
