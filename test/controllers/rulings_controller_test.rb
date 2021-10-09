require "test_helper"

class RulingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ruling = rulings(:one)
  end

  test "should get index" do
    get rulings_url
    assert_response :success
  end

  test "should get new" do
    get new_ruling_url
    assert_response :success
  end

  test "should create ruling" do
    assert_difference('Ruling.count') do
      post rulings_url, params: { ruling: { name: @ruling.name } }
    end

    assert_redirected_to ruling_url(Ruling.last)
  end

  test "should show ruling" do
    get ruling_url(@ruling)
    assert_response :success
  end

  test "should get edit" do
    get edit_ruling_url(@ruling)
    assert_response :success
  end

  test "should update ruling" do
    patch ruling_url(@ruling), params: { ruling: { name: @ruling.name } }
    assert_redirected_to ruling_url(@ruling)
  end

  test "should destroy ruling" do
    assert_difference('Ruling.count', -1) do
      delete ruling_url(@ruling)
    end

    assert_redirected_to rulings_url
  end
end
