require "application_system_test_case"

class PermitsTest < ApplicationSystemTestCase
  setup do
    @permit = permits(:one)
  end

  test "visiting the index" do
    visit permits_url
    assert_selector "h1", text: "Permits"
  end

  test "should create permit" do
    visit permits_url
    click_on "New permit"

    fill_in "Cost", with: @permit.cost
    fill_in "Title", with: @permit.title
    click_on "Create Permit"

    assert_text "Permit was successfully created"
    click_on "Back"
  end

  test "should update Permit" do
    visit permit_url(@permit)
    click_on "Edit this permit", match: :first

    fill_in "Cost", with: @permit.cost
    fill_in "Title", with: @permit.title
    click_on "Update Permit"

    assert_text "Permit was successfully updated"
    click_on "Back"
  end

  test "should destroy Permit" do
    visit permit_url(@permit)
    click_on "Destroy this permit", match: :first

    assert_text "Permit was successfully destroyed"
  end
end
