require 'test_helper'

class CrashesControllerTest < ActionController::TestCase
  setup do
    @crash = crashes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crashes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crash" do
    assert_difference('Crash.count') do
      post :create, crash: { crasher_id: @crash.crasher_id, date: @crash.date, host_id: @crash.host_id, item_for_exchange: @crash.item_for_exchange }
    end

    assert_redirected_to crash_path(assigns(:crash))
  end

  test "should show crash" do
    get :show, id: @crash
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crash
    assert_response :success
  end

  test "should update crash" do
    patch :update, id: @crash, crash: { crasher_id: @crash.crasher_id, date: @crash.date, host_id: @crash.host_id, item_for_exchange: @crash.item_for_exchange }
    assert_redirected_to crash_path(assigns(:crash))
  end

  test "should destroy crash" do
    assert_difference('Crash.count', -1) do
      delete :destroy, id: @crash
    end

    assert_redirected_to crashes_path
  end
end
