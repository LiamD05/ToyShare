require "test_helper"

class ToyStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @toy_status = toy_statuses(:one)
  end

  test "should get index" do
    get toy_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_toy_status_url
    assert_response :success
  end

  test "should create toy_status" do
    assert_difference("ToyStatus.count") do
      post toy_statuses_url, params: { toy_status: { name: @toy_status.name } }
    end

    assert_redirected_to toy_status_url(ToyStatus.last)
  end

  test "should show toy_status" do
    get toy_status_url(@toy_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_toy_status_url(@toy_status)
    assert_response :success
  end

  test "should update toy_status" do
    patch toy_status_url(@toy_status), params: { toy_status: { name: @toy_status.name } }
    assert_redirected_to toy_status_url(@toy_status)
  end

  test "should destroy toy_status" do
    assert_difference("ToyStatus.count", -1) do
      delete toy_status_url(@toy_status)
    end

    assert_redirected_to toy_statuses_url
  end
end
