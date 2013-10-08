require 'test_helper'

class AffirmationsControllerTest < ActionController::TestCase
  setup do
    @affirmation = affirmations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:affirmations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create affirmation" do
    assert_difference('Affirmation.count') do
      post :create, affirmation: { title: @affirmation.title, user_id: @affirmation.user_id }
    end

    assert_redirected_to affirmation_path(assigns(:affirmation))
  end

  test "should show affirmation" do
    get :show, id: @affirmation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @affirmation
    assert_response :success
  end

  test "should update affirmation" do
    put :update, id: @affirmation, affirmation: { title: @affirmation.title, user_id: @affirmation.user_id }
    assert_redirected_to affirmation_path(assigns(:affirmation))
  end

  test "should destroy affirmation" do
    assert_difference('Affirmation.count', -1) do
      delete :destroy, id: @affirmation
    end

    assert_redirected_to affirmations_path
  end
end
