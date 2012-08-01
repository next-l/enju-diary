require 'test_helper'

class ManifestationsControllerTest < ActionController::TestCase
  setup do
    @manifestation = manifestations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:manifestations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create manifestation" do
    assert_difference('Manifestation.count') do
      post :create, manifestation: { date_of_publication: @manifestation.date_of_publication, isbn: @manifestation.isbn, original_title: @manifestation.original_title, url: @manifestation.url }
    end

    assert_redirected_to manifestation_path(assigns(:manifestation))
  end

  test "should show manifestation" do
    get :show, id: @manifestation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @manifestation
    assert_response :success
  end

  test "should update manifestation" do
    put :update, id: @manifestation, manifestation: { date_of_publication: @manifestation.date_of_publication, isbn: @manifestation.isbn, original_title: @manifestation.original_title, url: @manifestation.url }
    assert_redirected_to manifestation_path(assigns(:manifestation))
  end

  test "should destroy manifestation" do
    assert_difference('Manifestation.count', -1) do
      delete :destroy, id: @manifestation
    end

    assert_redirected_to manifestations_path
  end
end
