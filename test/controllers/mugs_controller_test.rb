require 'test_helper'

class MugsControllerTest < ActionController::TestCase
  setup do
    @mug = mugs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mugs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mug" do
    assert_difference('Mug.count') do
      post :create, mug: { agency: @mug.agency, birthdate: @mug.birthdate, first_name: @mug.first_name, last_name: @mug.last_name, middle_name: @mug.middle_name, notes: @mug.notes, slug: @mug.slug }
    end

    assert_redirected_to mug_path(assigns(:mug))
  end

  test "should show mug" do
    get :show, id: @mug
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mug
    assert_response :success
  end

  test "should update mug" do
    patch :update, id: @mug, mug: { agency: @mug.agency, birthdate: @mug.birthdate, first_name: @mug.first_name, last_name: @mug.last_name, middle_name: @mug.middle_name, notes: @mug.notes, slug: @mug.slug }
    assert_redirected_to mug_path(assigns(:mug))
  end

  test "should destroy mug" do
    assert_difference('Mug.count', -1) do
      delete :destroy, id: @mug
    end

    assert_redirected_to mugs_path
  end
end
