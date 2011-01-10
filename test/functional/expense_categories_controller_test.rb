require 'test_helper'

class ExpenseCategoriesControllerTest < ActionController::TestCase
  setup do
    @expense_category = expense_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expense_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expense_category" do
    assert_difference('ExpenseCategory.count') do
      post :create, :expense_category => @expense_category.attributes
    end

    assert_redirected_to expense_category_path(assigns(:expense_category))
  end

  test "should show expense_category" do
    get :show, :id => @expense_category.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @expense_category.to_param
    assert_response :success
  end

  test "should update expense_category" do
    put :update, :id => @expense_category.to_param, :expense_category => @expense_category.attributes
    assert_redirected_to expense_category_path(assigns(:expense_category))
  end

  test "should destroy expense_category" do
    assert_difference('ExpenseCategory.count', -1) do
      delete :destroy, :id => @expense_category.to_param
    end

    assert_redirected_to expense_categories_path
  end
end
