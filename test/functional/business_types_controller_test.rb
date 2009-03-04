require 'test_helper'

class BusinessTypesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:business_types)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_business_type
    assert_difference('BusinessType.count') do
      post :create, :business_type => { }
    end

    assert_redirected_to business_type_path(assigns(:business_type))
  end

  def test_should_show_business_type
    get :show, :id => business_types(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => business_types(:one).id
    assert_response :success
  end

  def test_should_update_business_type
    put :update, :id => business_types(:one).id, :business_type => { }
    assert_redirected_to business_type_path(assigns(:business_type))
  end

  def test_should_destroy_business_type
    assert_difference('BusinessType.count', -1) do
      delete :destroy, :id => business_types(:one).id
    end

    assert_redirected_to business_types_path
  end
end
