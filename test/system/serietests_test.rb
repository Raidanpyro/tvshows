require "application_system_test_case"

class SerietestsTest < ApplicationSystemTestCase
  setup do
    @serietest = serietests(:one)
  end

  test "visiting the index" do
    visit serietests_url
    assert_selector "h1", text: "Serietests"
  end

  test "creating a Serietest" do
    visit serietests_url
    click_on "New Serietest"

    fill_in "Description", with: @serietest.description
    fill_in "Name", with: @serietest.name
    click_on "Create Serietest"

    assert_text "Serietest was successfully created"
    click_on "Back"
  end

  test "updating a Serietest" do
    visit serietests_url
    click_on "Edit", match: :first

    fill_in "Description", with: @serietest.description
    fill_in "Name", with: @serietest.name
    click_on "Update Serietest"

    assert_text "Serietest was successfully updated"
    click_on "Back"
  end

  test "destroying a Serietest" do
    visit serietests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Serietest was successfully destroyed"
  end
end
