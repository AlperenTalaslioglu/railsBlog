require 'test_helper'

class AlperensControllerTest < ActionController::TestCase
  setup do
    @alperen = alperens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alperens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alperen" do
    assert_difference('Alperen.count') do
      post :create, alperen: {  }
    end

    assert_redirected_to alperen_path(assigns(:alperen))
  end

  test "should show alperen" do
    get :show, id: @alperen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alperen
    assert_response :success
  end

  test "should update alperen" do
    patch :update, id: @alperen, alperen: {  }
    assert_redirected_to alperen_path(assigns(:alperen))
  end

  test "should destroy alperen" do
    assert_difference('Alperen.count', -1) do
      delete :destroy, id: @alperen
    end

    assert_redirected_to alperens_path
  end
end
