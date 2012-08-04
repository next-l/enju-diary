require 'test_helper'

class RealizesControllerTest < ActionController::TestCase
  setup do
    @realize = realizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:realizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create realize" do
    assert_difference('Realize.count') do
      post :create, realize: { manifestation_id: @realize.manifestation_id, patron_id: @realize.patron_id }
    end

    assert_redirected_to realize_path(assigns(:realize))
  end

  test "should show realize" do
    get :show, id: @realize
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @realize
    assert_response :success
  end

  test "should update realize" do
    put :update, id: @realize, realize: { manifestation_id: @realize.manifestation_id, patron_id: @realize.patron_id }
    assert_redirected_to realize_path(assigns(:realize))
  end

  test "should destroy realize" do
    assert_difference('Realize.count', -1) do
      delete :destroy, id: @realize
    end

    assert_redirected_to realizes_path
  end
end
