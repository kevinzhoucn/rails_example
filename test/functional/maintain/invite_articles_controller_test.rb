require 'test_helper'

class Maintain::InviteArticlesControllerTest < ActionController::TestCase
  setup do
    @maintain_invite_article = maintain_invite_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maintain_invite_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maintain_invite_article" do
    assert_difference('Maintain::InviteArticle.count') do
      post :create, maintain_invite_article: { content: @maintain_invite_article.content, invite_user_id: @maintain_invite_article.invite_user_id, title: @maintain_invite_article.title }
    end

    assert_redirected_to maintain_invite_article_path(assigns(:maintain_invite_article))
  end

  test "should show maintain_invite_article" do
    get :show, id: @maintain_invite_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @maintain_invite_article
    assert_response :success
  end

  test "should update maintain_invite_article" do
    put :update, id: @maintain_invite_article, maintain_invite_article: { content: @maintain_invite_article.content, invite_user_id: @maintain_invite_article.invite_user_id, title: @maintain_invite_article.title }
    assert_redirected_to maintain_invite_article_path(assigns(:maintain_invite_article))
  end

  test "should destroy maintain_invite_article" do
    assert_difference('Maintain::InviteArticle.count', -1) do
      delete :destroy, id: @maintain_invite_article
    end

    assert_redirected_to maintain_invite_articles_path
  end
end
