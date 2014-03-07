require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get collection" do
    get :collection
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get delivery" do
    get :delivery
    assert_response :success
  end

  test "should get legal" do
    get :legal
    assert_response :success
  end

  test "should get product" do
    get :product
    assert_response :success
  end

  test "should get returns" do
    get :returns
    assert_response :success
  end

  test "should get social" do
    get :social
    assert_response :success
  end

  test "should get the_brand" do
    get :the_brand
    assert_response :success
  end

end
