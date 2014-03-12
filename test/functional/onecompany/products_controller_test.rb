require 'test_helper'

class Onecompany::ProductsControllerTest < ActionController::TestCase
  setup do
    @onecompany_product = onecompany_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:onecompany_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create onecompany_product" do
    assert_difference('Onecompany::Product.count') do
      post :create, onecompany_product: { content: @onecompany_product.content, img_url: @onecompany_product.img_url, name: @onecompany_product.name, onecompany_product_category_id: @onecompany_product.onecompany_product_category_id }
    end

    assert_redirected_to onecompany_product_path(assigns(:onecompany_product))
  end

  test "should show onecompany_product" do
    get :show, id: @onecompany_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @onecompany_product
    assert_response :success
  end

  test "should update onecompany_product" do
    put :update, id: @onecompany_product, onecompany_product: { content: @onecompany_product.content, img_url: @onecompany_product.img_url, name: @onecompany_product.name, onecompany_product_category_id: @onecompany_product.onecompany_product_category_id }
    assert_redirected_to onecompany_product_path(assigns(:onecompany_product))
  end

  test "should destroy onecompany_product" do
    assert_difference('Onecompany::Product.count', -1) do
      delete :destroy, id: @onecompany_product
    end

    assert_redirected_to onecompany_products_path
  end
end
