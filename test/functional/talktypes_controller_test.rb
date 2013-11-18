require 'test_helper'

class TalktypesControllerTest < ActionController::TestCase
  setup do
    @talktype = talktypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:talktypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create talktype" do
    assert_difference('Talktype.count') do
      post :create, talktype: { name: @talktype.name }
    end

    assert_redirected_to talktype_path(assigns(:talktype))
  end

  test "should show talktype" do
    get :show, id: @talktype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @talktype
    assert_response :success
  end

  test "should update talktype" do
    put :update, id: @talktype, talktype: { name: @talktype.name }
    assert_redirected_to talktype_path(assigns(:talktype))
  end

  test "should destroy talktype" do
    assert_difference('Talktype.count', -1) do
      delete :destroy, id: @talktype
    end

    assert_redirected_to talktypes_path
  end
end
