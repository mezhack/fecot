require "application_system_test_case"

class GymsTest < ApplicationSystemTestCase
  setup do
    @gym = gyms(:one)
  end

  test "visiting the index" do
    visit gyms_url
    assert_selector "h1", text: "Gyms"
  end

  test "should create gym" do
    visit gyms_url
    click_on "New gym"

    fill_in "Address", with: @gym.address
    fill_in "Latitude", with: @gym.latitude
    fill_in "Longitude", with: @gym.longitude
    fill_in "Name", with: @gym.name
    fill_in "Responsible", with: @gym.responsible_id
    click_on "Create Gym"

    assert_text "Gym was successfully created"
    click_on "Back"
  end

  test "should update Gym" do
    visit gym_url(@gym)
    click_on "Edit this gym", match: :first

    fill_in "Address", with: @gym.address
    fill_in "Latitude", with: @gym.latitude
    fill_in "Longitude", with: @gym.longitude
    fill_in "Name", with: @gym.name
    fill_in "Responsible", with: @gym.responsible_id
    click_on "Update Gym"

    assert_text "Gym was successfully updated"
    click_on "Back"
  end

  test "should destroy Gym" do
    visit gym_url(@gym)
    click_on "Destroy this gym", match: :first

    assert_text "Gym was successfully destroyed"
  end
end
