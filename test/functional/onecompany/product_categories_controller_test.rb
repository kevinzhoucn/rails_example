require 'test_helper'

class Onecompany::ProductCategoriesControllerTest < ActionController::TestCase
  setup do
    @onecompany_product_category = onecompany_product_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:onecompany_product_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create onecompany_product_category" do
    assert_difference('Onecompany::ProductCategory.count') do
      post :create, onecompany_product_category: { name: @onecompany_product_category.name }
    end

    assert_redirected_to onecompany_product_category_path(assigns(:onecompany_product_category))
  end

  test "should show onecompany_product_category" do
    get :show, id: @onecompany_product_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @onecompany_product_category
    assert_response :success
  end

  test "should update onecompany_product_category" do
    put :update, id: @onecompany_product_category, onecompany_product_category: { name: @onecompany_product_category.name }
    assert_redirected_to onecompany_product_category_path(assigns(:onecompany_product_category))
  end

  test "should destroy onecompany_product_category" do
    assert_difference('Onecompany::ProductCategory.count', -1) do
      delete :destroy, id: @onecompany_product_category
    end

    assert_redirected_to onecompany_product_categories_path
  end
end
