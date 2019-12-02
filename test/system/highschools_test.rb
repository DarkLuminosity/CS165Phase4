require "application_system_test_case"

class HighschoolsTest < ApplicationSystemTestCase
  setup do
    @highschool = highschools(:one)
  end

  test "visiting the index" do
    visit highschools_url
    assert_selector "h1", text: "Highschools"
  end

  test "creating a Highschool" do
    visit highschools_url
    click_on "New Highschool"

    fill_in "Address", with: @highschool.address
    fill_in "Name", with: @highschool.name
    click_on "Create Highschool"

    assert_text "Highschool was successfully created"
    click_on "Back"
  end

  test "updating a Highschool" do
    visit highschools_url
    click_on "Edit", match: :first

    fill_in "Address", with: @highschool.address
    fill_in "Name", with: @highschool.name
    click_on "Update Highschool"

    assert_text "Highschool was successfully updated"
    click_on "Back"
  end

  test "destroying a Highschool" do
    visit highschools_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Highschool was successfully destroyed"
  end
end
