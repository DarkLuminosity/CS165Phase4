require 'test_helper'

class TestcentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testcenter = testcenters(:one)
  end

  test "should get index" do
    get testcenters_url
    assert_response :success
  end

  test "should get new" do
    get new_testcenter_url
    assert_response :success
  end

  test "should create testcenter" do
    assert_difference('Testcenter.count') do
      post testcenters_url, params: { testcenter: { name: @testcenter.name } }
    end

    assert_redirected_to testcenter_url(Testcenter.last)
  end

  test "should show testcenter" do
    get testcenter_url(@testcenter)
    assert_response :success
  end

  test "should get edit" do
    get edit_testcenter_url(@testcenter)
    assert_response :success
  end

  test "should update testcenter" do
    patch testcenter_url(@testcenter), params: { testcenter: { name: @testcenter.name } }
    assert_redirected_to testcenter_url(@testcenter)
  end

  test "should destroy testcenter" do
    assert_difference('Testcenter.count', -1) do
      delete testcenter_url(@testcenter)
    end

    assert_redirected_to testcenters_url
  end
end
