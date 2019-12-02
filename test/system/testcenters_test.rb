require "application_system_test_case"

class TestcentersTest < ApplicationSystemTestCase
  setup do
    @testcenter = testcenters(:one)
  end

  test "visiting the index" do
    visit testcenters_url
    assert_selector "h1", text: "Testcenters"
  end

  test "creating a Testcenter" do
    visit testcenters_url
    click_on "New Testcenter"

    fill_in "Name", with: @testcenter.name
    click_on "Create Testcenter"

    assert_text "Testcenter was successfully created"
    click_on "Back"
  end

  test "updating a Testcenter" do
    visit testcenters_url
    click_on "Edit", match: :first

    fill_in "Name", with: @testcenter.name
    click_on "Update Testcenter"

    assert_text "Testcenter was successfully updated"
    click_on "Back"
  end

  test "destroying a Testcenter" do
    visit testcenters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Testcenter was successfully destroyed"
  end
end
