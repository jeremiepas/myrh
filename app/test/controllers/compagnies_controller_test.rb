require 'test_helper'

class CompagniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @compagny = compagnies(:one)
  end

  test "should get index" do
    get compagnies_url
    assert_response :success
  end

  test "should get new" do
    get new_compagny_url
    assert_response :success
  end

  test "should create compagny" do
    assert_difference('Compagny.count') do
      post compagnies_url, params: { compagny: {  } }
    end

    assert_redirected_to compagny_url(Compagny.last)
  end

  test "should show compagny" do
    get compagny_url(@compagny)
    assert_response :success
  end

  test "should get edit" do
    get edit_compagny_url(@compagny)
    assert_response :success
  end

  test "should update compagny" do
    patch compagny_url(@compagny), params: { compagny: {  } }
    assert_redirected_to compagny_url(@compagny)
  end

  test "should destroy compagny" do
    assert_difference('Compagny.count', -1) do
      delete compagny_url(@compagny)
    end

    assert_redirected_to compagnies_url
  end
end
