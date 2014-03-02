require 'test_helper'

class Maintain::CustomerFeedbacksControllerTest < ActionController::TestCase
  setup do
    @maintain_customer_feedback = maintain_customer_feedbacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maintain_customer_feedbacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maintain_customer_feedback" do
    assert_difference('Maintain::CustomerFeedback.count') do
      post :create, maintain_customer_feedback: { message: @maintain_customer_feedback.message }
    end

    assert_redirected_to maintain_customer_feedback_path(assigns(:maintain_customer_feedback))
  end

  test "should show maintain_customer_feedback" do
    get :show, id: @maintain_customer_feedback
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @maintain_customer_feedback
    assert_response :success
  end

  test "should update maintain_customer_feedback" do
    put :update, id: @maintain_customer_feedback, maintain_customer_feedback: { message: @maintain_customer_feedback.message }
    assert_redirected_to maintain_customer_feedback_path(assigns(:maintain_customer_feedback))
  end

  test "should destroy maintain_customer_feedback" do
    assert_difference('Maintain::CustomerFeedback.count', -1) do
      delete :destroy, id: @maintain_customer_feedback
    end

    assert_redirected_to maintain_customer_feedbacks_path
  end
end
