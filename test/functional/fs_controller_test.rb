require 'test_helper'

class FsControllerTest < ActionController::TestCase
  setup do
    @f = fs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create f" do
    assert_difference('F.count') do
      post :create, f: { desc: @f.desc, name: @f.name }
    end

    assert_redirected_to f_path(assigns(:f))
  end

  test "should show f" do
    get :show, id: @f
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @f
    assert_response :success
  end

  test "should update f" do
    put :update, id: @f, f: { desc: @f.desc, name: @f.name }
    assert_redirected_to f_path(assigns(:f))
  end

  test "should destroy f" do
    assert_difference('F.count', -1) do
      delete :destroy, id: @f
    end

    assert_redirected_to fs_path
  end
end
