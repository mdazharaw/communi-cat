require 'test_helper'

class FeedLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feed_log = feed_logs(:one)
  end

  test "should get index" do
    get feed_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_feed_log_url
    assert_response :success
  end

  test "should create feed_log" do
    assert_difference('FeedLog.count') do
      post feed_logs_url, params: { feed_log: { cat_id: @feed_log.cat_id, comment: @feed_log.comment, user_id: @feed_log.user_id } }
    end

    assert_redirected_to feed_log_url(FeedLog.last)
  end

  test "should show feed_log" do
    get feed_log_url(@feed_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_feed_log_url(@feed_log)
    assert_response :success
  end

  test "should update feed_log" do
    patch feed_log_url(@feed_log), params: { feed_log: { cat_id: @feed_log.cat_id, comment: @feed_log.comment, user_id: @feed_log.user_id } }
    assert_redirected_to feed_log_url(@feed_log)
  end

  test "should destroy feed_log" do
    assert_difference('FeedLog.count', -1) do
      delete feed_log_url(@feed_log)
    end

    assert_redirected_to feed_logs_url
  end
end
