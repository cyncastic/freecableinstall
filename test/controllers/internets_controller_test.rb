require 'test_helper'

class InternetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @internet = internets(:one)
  end

  test "should get index" do
    get internets_url
    assert_response :success
  end

  test "should get new" do
    get new_internet_url
    assert_response :success
  end

  test "should create internet" do
    assert_difference('Internet.count') do
      post internets_url, params: { internet: { best_time: @internet.best_time, best_way: @internet.best_way, business_name: @internet.business_name, business_phone: @internet.business_phone, cable_provider: @internet.cable_provider, city: @internet.city, email: @internet.email, first_name: @internet.first_name, interested: @internet.interested, last_name: @internet.last_name, number_computers: @internet.number_computers, phone: @internet.phone, state: @internet.state, street_address_1: @internet.street_address_1, street_address_2: @internet.street_address_2, zip: @internet.zip } }
    end

    assert_redirected_to internet_url(Internet.last)
  end

  test "should show internet" do
    get internet_url(@internet)
    assert_response :success
  end

  test "should get edit" do
    get edit_internet_url(@internet)
    assert_response :success
  end

  test "should update internet" do
    patch internet_url(@internet), params: { internet: { best_time: @internet.best_time, best_way: @internet.best_way, business_name: @internet.business_name, business_phone: @internet.business_phone, cable_provider: @internet.cable_provider, city: @internet.city, email: @internet.email, first_name: @internet.first_name, interested: @internet.interested, last_name: @internet.last_name, number_computers: @internet.number_computers, phone: @internet.phone, state: @internet.state, street_address_1: @internet.street_address_1, street_address_2: @internet.street_address_2, zip: @internet.zip } }
    assert_redirected_to internet_url(@internet)
  end

  test "should destroy internet" do
    assert_difference('Internet.count', -1) do
      delete internet_url(@internet)
    end

    assert_redirected_to internets_url
  end
end
