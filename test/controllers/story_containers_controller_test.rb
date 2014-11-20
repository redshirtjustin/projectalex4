require 'test_helper'

class StoryContainersControllerTest < ActionController::TestCase
  setup do
    @story_container = story_containers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:story_containers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create story_container" do
    assert_difference('StoryContainer.count') do
      post :create, story_container: {  }
    end

    assert_redirected_to story_container_path(assigns(:story_container))
  end

  test "should show story_container" do
    get :show, id: @story_container
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @story_container
    assert_response :success
  end

  test "should update story_container" do
    patch :update, id: @story_container, story_container: {  }
    assert_redirected_to story_container_path(assigns(:story_container))
  end

  test "should destroy story_container" do
    assert_difference('StoryContainer.count', -1) do
      delete :destroy, id: @story_container
    end

    assert_redirected_to story_containers_path
  end
end
