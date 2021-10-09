require "application_system_test_case"

class RulingsTest < ApplicationSystemTestCase
  setup do
    @ruling = rulings(:one)
  end

  test "visiting the index" do
    visit rulings_url
    assert_selector "h1", text: "Rulings"
  end

  test "creating a Ruling" do
    visit rulings_url
    click_on "New Ruling"

    fill_in "Name", with: @ruling.name
    click_on "Create Ruling"

    assert_text "Ruling was successfully created"
    click_on "Back"
  end

  test "updating a Ruling" do
    visit rulings_url
    click_on "Edit", match: :first

    fill_in "Name", with: @ruling.name
    click_on "Update Ruling"

    assert_text "Ruling was successfully updated"
    click_on "Back"
  end

  test "destroying a Ruling" do
    visit rulings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ruling was successfully destroyed"
  end
end
