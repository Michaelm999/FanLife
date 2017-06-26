require 'test_helper'

class FandomControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fandom_index_url
    assert_response :success
  end

  test "should get show" do
    get fandom_show_url
    assert_response :success
  end

  test "should get new" do
    get fandom_new_url
    assert_response :success
  end

  test "should get create" do
    get fandom_create_url
    assert_response :success
  end

  test "should get edit" do
    get fandom_edit_url
    assert_response :success
  end

  test "should get update" do
    get fandom_update_url
    assert_response :success
  end

  test "should get destroy" do
    get fandom_destroy_url
    assert_response :success
  end

end
