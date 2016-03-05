require 'test_helper'

class ApplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @application = applications(:one)
  end

  test "should get index" do
    get applications_url
    assert_response :success
  end

  test "should create application" do
    assert_difference('Application.count') do
      post applications_url, params: { application: { comment: @application.comment, date: @application.date, nursery: @application.nursery, symptom: @application.symptom, user: @application.user } }
    end

    assert_response 201
  end

  test "should show application" do
    get application_url(@application)
    assert_response :success
  end

  test "should update application" do
    patch application_url(@application), params: { application: { comment: @application.comment, date: @application.date, nursery: @application.nursery, symptom: @application.symptom, user: @application.user } }
    assert_response 200
  end

  test "should destroy application" do
    assert_difference('Application.count', -1) do
      delete application_url(@application)
    end

    assert_response 204
  end
end
