require "test_helper"

class SerietestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @serietest = serietests(:one)
  end

  test "should get index" do
    get serietests_url
    assert_response :success
  end

  test "should get new" do
    get new_serietest_url
    assert_response :success
  end

  test "should create serietest" do
    assert_difference('Serietest.count') do
      post serietests_url, params: { serietest: { description: @serietest.description, name: @serietest.name } }
    end

    assert_redirected_to serietest_url(Serietest.last)
  end

  test "should show serietest" do
    get serietest_url(@serietest)
    assert_response :success
  end

  test "should get edit" do
    get edit_serietest_url(@serietest)
    assert_response :success
  end

  test "should update serietest" do
    patch serietest_url(@serietest), params: { serietest: { description: @serietest.description, name: @serietest.name } }
    assert_redirected_to serietest_url(@serietest)
  end

  test "should destroy serietest" do
    assert_difference('Serietest.count', -1) do
      delete serietest_url(@serietest)
    end

    assert_redirected_to serietests_url
  end
end
