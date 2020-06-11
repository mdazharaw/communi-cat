require "application_system_test_case"

class FeedLogsTest < ApplicationSystemTestCase
  setup do
    @feed_log = feed_logs(:one)
  end

  test "visiting the index" do
    visit feed_logs_url
    assert_selector "h1", text: "Feed Logs"
  end

  test "creating a Feed log" do
    visit feed_logs_url
    click_on "New Feed Log"

    fill_in "Cat", with: @feed_log.cat_id
    fill_in "Comment", with: @feed_log.comment
    fill_in "User", with: @feed_log.user_id
    click_on "Create Feed log"

    assert_text "Feed log was successfully created"
    click_on "Back"
  end

  test "updating a Feed log" do
    visit feed_logs_url
    click_on "Edit", match: :first

    fill_in "Cat", with: @feed_log.cat_id
    fill_in "Comment", with: @feed_log.comment
    fill_in "User", with: @feed_log.user_id
    click_on "Update Feed log"

    assert_text "Feed log was successfully updated"
    click_on "Back"
  end

  test "destroying a Feed log" do
    visit feed_logs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Feed log was successfully destroyed"
  end
end
