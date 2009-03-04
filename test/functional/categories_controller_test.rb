require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:categories)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_categorie
    assert_difference('Categorie.count') do
      post :create, :categorie => { }
    end

    assert_redirected_to categorie_path(assigns(:categorie))
  end

  def test_should_show_categorie
    get :show, :id => categories(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => categories(:one).id
    assert_response :success
  end

  def test_should_update_categorie
    put :update, :id => categories(:one).id, :categorie => { }
    assert_redirected_to categorie_path(assigns(:categorie))
  end

  def test_should_destroy_categorie
    assert_difference('Categorie.count', -1) do
      delete :destroy, :id => categories(:one).id
    end

    assert_redirected_to categories_path
  end
end
