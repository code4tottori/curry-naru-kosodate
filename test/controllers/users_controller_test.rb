require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { child_birthdate: @user.child_birthdate, child_comment: @user.child_comment, child_gender: @user.child_gender, child_name: @user.child_name, email: @user.email, name: @user.name, password: @user.password, phone: @user.phone, user_id: @user.user_id } }
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { child_birthdate: @user.child_birthdate, child_comment: @user.child_comment, child_gender: @user.child_gender, child_name: @user.child_name, email: @user.email, name: @user.name, password: @user.password, phone: @user.phone, user_id: @user.user_id } }
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_response 204
  end
end
