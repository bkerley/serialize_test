require 'test_helper'

class HatsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:hats)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_hat
    assert_difference('Hat.count') do
      post :create, :hat => { }
    end

    assert_redirected_to hat_path(assigns(:hat))
  end

  def test_should_show_hat
    get :show, :id => hats(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => hats(:one).id
    assert_response :success
  end

  def test_should_update_hat
    put :update, :id => hats(:one).id, :hat => { }
    assert_redirected_to hat_path(assigns(:hat))
  end

  def test_should_destroy_hat
    assert_difference('Hat.count', -1) do
      delete :destroy, :id => hats(:one).id
    end

    assert_redirected_to hats_path
  end
end
