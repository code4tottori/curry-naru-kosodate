require 'test_helper'

class NurseriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nurseries = nurseries(:one)
  end

  test "should get index" do
    get nurseries_url
    assert_response :success
  end

  test "should get new" do
    get new_nurseries_url
    assert_response :success
  end

  test "should create nurseries" do
    assert_difference('Nursery.count') do
      post nurseries_url, params: { nurseries: { address: @nurseries.address, business_hours: @nurseries.business_hours, capacity: @nurseries.capacity, comment: @nurseries.comment, condition: @nurseries.condition, fee: @nurseries.fee, medical_system: @nurseries.medical_system, name: @nurseries.name, phone: @nurseries.phone, things: @nurseries.things } }
    end

    assert_redirected_to nurseries_path(Nursery.last)
  end

  test "should show nurseries" do
    get nurseries_url(@nurseries)
    assert_response :success
  end

  test "should get edit" do
    get edit_nurseries_url(@nurseries)
    assert_response :success
  end

  test "should update nurseries" do
    patch nurseries_url(@nurseries), params: { nurseries: { address: @nurseries.address, business_hours: @nurseries.business_hours, capacity: @nurseries.capacity, comment: @nurseries.comment, condition: @nurseries.condition, fee: @nurseries.fee, medical_system: @nurseries.medical_system, name: @nurseries.name, phone: @nurseries.phone, things: @nurseries.things } }
    assert_redirected_to nurseries_path(@nurseries)
  end

  test "should destroy nurseries" do
    assert_difference('Nursery.count', -1) do
      delete nurseries_url(@nurseries)
    end

    assert_redirected_to nurseries_path
  end
end
