require 'test_helper'

class LivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @live = lives(:one)
  end

  test "should get index" do
    get lives_url
    assert_response :success
  end

  test "should get new" do
    get new_live_url
    assert_response :success
  end

  test "should create live" do
    assert_difference('Live.count') do
      post lives_url, params: { live: { text: @live.text, title: @live.title, ymd: @live.ymd } }
    end

    assert_redirected_to live_url(Live.last)
  end

  test "should show live" do
    get live_url(@live)
    assert_response :success
  end

  test "should get edit" do
    get edit_live_url(@live)
    assert_response :success
  end

  test "should update live" do
    patch live_url(@live), params: { live: { text: @live.text, title: @live.title, ymd: @live.ymd } }
    assert_redirected_to live_url(@live)
  end

  test "should destroy live" do
    assert_difference('Live.count', -1) do
      delete live_url(@live)
    end

    assert_redirected_to lives_url
  end
end
