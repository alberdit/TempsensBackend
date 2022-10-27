require "application_system_test_case"

class DevlogsTest < ApplicationSystemTestCase
  setup do
    @devlog = devlogs(:one)
  end

  test "visiting the index" do
    visit devlogs_url
    assert_selector "h1", text: "Devlogs"
  end

  test "should create devlog" do
    visit devlogs_url
    click_on "New devlog"

    fill_in "Data", with: @devlog.data
    fill_in "Deviceid", with: @devlog.deviceid
    fill_in "Devlogs", with: @devlog.devlogs
    click_on "Create Devlog"

    assert_text "Devlog was successfully created"
    click_on "Back"
  end

  test "should update Devlog" do
    visit devlog_url(@devlog)
    click_on "Edit this devlog", match: :first

    fill_in "Data", with: @devlog.data
    fill_in "Deviceid", with: @devlog.deviceid
    fill_in "Devlogs", with: @devlog.devlogs
    click_on "Update Devlog"

    assert_text "Devlog was successfully updated"
    click_on "Back"
  end

  test "should destroy Devlog" do
    visit devlog_url(@devlog)
    click_on "Destroy this devlog", match: :first

    assert_text "Devlog was successfully destroyed"
  end
end
