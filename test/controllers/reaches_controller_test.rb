require "test_helper"

class ReachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reach = reaches(:one)
  end

  test "should get index" do
    get reaches_url
    assert_response :success
  end

  test "should get new" do
    get new_reach_url
    assert_response :success
  end

  test "should create reach" do
    assert_difference('Reach.count') do
      post reaches_url, params: { reach: { name: @reach.name } }
    end

    assert_redirected_to reach_url(Reach.last)
  end

  test "should show reach" do
    get reach_url(@reach)
    assert_response :success
  end

  test "should get edit" do
    get edit_reach_url(@reach)
    assert_response :success
  end

  test "should update reach" do
    patch reach_url(@reach), params: { reach: { name: @reach.name } }
    assert_redirected_to reach_url(@reach)
  end

  test "should destroy reach" do
    assert_difference('Reach.count', -1) do
      delete reach_url(@reach)
    end

    assert_redirected_to reaches_url
  end
end
