require 'test_helper'

class HighschoolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @highschool = highschools(:one)
  end

  test "should get index" do
    get highschools_url
    assert_response :success
  end

  test "should get new" do
    get new_highschool_url
    assert_response :success
  end

  test "should create highschool" do
    assert_difference('Highschool.count') do
      post highschools_url, params: { highschool: { address: @highschool.address, name: @highschool.name } }
    end

    assert_redirected_to highschool_url(Highschool.last)
  end

  test "should show highschool" do
    get highschool_url(@highschool)
    assert_response :success
  end

  test "should get edit" do
    get edit_highschool_url(@highschool)
    assert_response :success
  end

  test "should update highschool" do
    patch highschool_url(@highschool), params: { highschool: { address: @highschool.address, name: @highschool.name } }
    assert_redirected_to highschool_url(@highschool)
  end

  test "should destroy highschool" do
    assert_difference('Highschool.count', -1) do
      delete highschool_url(@highschool)
    end

    assert_redirected_to highschools_url
  end
end
