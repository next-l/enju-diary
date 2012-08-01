require 'test_helper'

class PatronsControllerTest < ActionController::TestCase
  setup do
    @patron = patrons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patrons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patron" do
    assert_difference('Patron.count') do
      post :create, patron: { full_name: @patron.full_name }
    end

    assert_redirected_to patron_path(assigns(:patron))
  end

  test "should show patron" do
    get :show, id: @patron
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patron
    assert_response :success
  end

  test "should update patron" do
    put :update, id: @patron, patron: { full_name: @patron.full_name }
    assert_redirected_to patron_path(assigns(:patron))
  end

  test "should destroy patron" do
    assert_difference('Patron.count', -1) do
      delete :destroy, id: @patron
    end

    assert_redirected_to patrons_path
  end
end
