require "application_system_test_case"

class ReachesTest < ApplicationSystemTestCase
  setup do
    @reach = reaches(:one)
  end

  test "visiting the index" do
    visit reaches_url
    assert_selector "h1", text: "Reaches"
  end

  test "creating a Reach" do
    visit reaches_url
    click_on "New Reach"

    fill_in "Name", with: @reach.name
    click_on "Create Reach"

    assert_text "Reach was successfully created"
    click_on "Back"
  end

  test "updating a Reach" do
    visit reaches_url
    click_on "Edit", match: :first

    fill_in "Name", with: @reach.name
    click_on "Update Reach"

    assert_text "Reach was successfully updated"
    click_on "Back"
  end

  test "destroying a Reach" do
    visit reaches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reach was successfully destroyed"
  end
end
