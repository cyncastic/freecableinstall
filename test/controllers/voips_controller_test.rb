require 'test_helper'

class VoipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @voip = voips(:one)
  end

  test "should get index" do
    get voips_url
    assert_response :success
  end

  test "should get new" do
    get new_voip_url
    assert_response :success
  end

  test "should create voip" do
    assert_difference('Voip.count') do
      post voips_url, params: { voip: { also_interested: @voip.also_interested, best_time: @voip.best_time, best_way: @voip.best_way, business_name: @voip.business_name, city: @voip.city, email: @voip.email, first_name: @voip.first_name, last_name: @voip.last_name, number_phones: @voip.number_phones, phone: @voip.phone, phone_choice: @voip.phone_choice, state: @voip.state, street_address_1: @voip.street_address_1, street_address_2: @voip.street_address_2, zip: @voip.zip } }
    end

    assert_redirected_to voip_url(Voip.last)
  end

  test "should show voip" do
    get voip_url(@voip)
    assert_response :success
  end

  test "should get edit" do
    get edit_voip_url(@voip)
    assert_response :success
  end

  test "should update voip" do
    patch voip_url(@voip), params: { voip: { also_interested: @voip.also_interested, best_time: @voip.best_time, best_way: @voip.best_way, business_name: @voip.business_name, city: @voip.city, email: @voip.email, first_name: @voip.first_name, last_name: @voip.last_name, number_phones: @voip.number_phones, phone: @voip.phone, phone_choice: @voip.phone_choice, state: @voip.state, street_address_1: @voip.street_address_1, street_address_2: @voip.street_address_2, zip: @voip.zip } }
    assert_redirected_to voip_url(@voip)
  end

  test "should destroy voip" do
    assert_difference('Voip.count', -1) do
      delete voip_url(@voip)
    end

    assert_redirected_to voips_url
  end
end
