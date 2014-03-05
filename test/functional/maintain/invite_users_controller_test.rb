require 'test_helper'

class Maintain::InviteUsersControllerTest < ActionController::TestCase
  setup do
    @maintain_invite_user = maintain_invite_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maintain_invite_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maintain_invite_user" do
    assert_difference('Maintain::InviteUser.count') do
      post :create, maintain_invite_user: { code: @maintain_invite_user.code, name: @maintain_invite_user.name }
    end

    assert_redirected_to maintain_invite_user_path(assigns(:maintain_invite_user))
  end

  test "should show maintain_invite_user" do
    get :show, id: @maintain_invite_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @maintain_invite_user
    assert_response :success
  end

  test "should update maintain_invite_user" do
    put :update, id: @maintain_invite_user, maintain_invite_user: { code: @maintain_invite_user.code, name: @maintain_invite_user.name }
    assert_redirected_to maintain_invite_user_path(assigns(:maintain_invite_user))
  end

  test "should destroy maintain_invite_user" do
    assert_difference('Maintain::InviteUser.count', -1) do
      delete :destroy, id: @maintain_invite_user
    end

    assert_redirected_to maintain_invite_users_path
  end
end
