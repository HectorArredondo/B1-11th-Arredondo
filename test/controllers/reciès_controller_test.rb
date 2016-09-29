require 'test_helper'

class RecièsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reciè = reciès(:one)
  end

  test "should get index" do
    get reciès_url
    assert_response :success
  end

  test "should get new" do
    get new_reciè_url
    assert_response :success
  end

  test "should create reciè" do
    assert_difference('Reciè.count') do
      post reciès_url, params: { reciè: { image: @reciè.image, ingredients: @reciè.ingredients, name: @reciè.name, preparation: @reciè.preparation } }
    end

    assert_redirected_to reciè_url(Reciè.last)
  end

  test "should show reciè" do
    get reciè_url(@reciè)
    assert_response :success
  end

  test "should get edit" do
    get edit_reciè_url(@reciè)
    assert_response :success
  end

  test "should update reciè" do
    patch reciè_url(@reciè), params: { reciè: { image: @reciè.image, ingredients: @reciè.ingredients, name: @reciè.name, preparation: @reciè.preparation } }
    assert_redirected_to reciè_url(@reciè)
  end

  test "should destroy reciè" do
    assert_difference('Reciè.count', -1) do
      delete reciè_url(@reciè)
    end

    assert_redirected_to reciès_url
  end
end
