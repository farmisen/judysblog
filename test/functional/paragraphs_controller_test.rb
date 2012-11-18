require 'test_helper'

class ParagraphsControllerTest < ActionController::TestCase
  setup do
    @paragraph = paragraphs(:one)
    @post = posts(:one)
  end

  test "should get index" do
    get :index, :post_id=> @post.id
    assert_response :success
    assert_not_nil assigns(:paragraphs)
  end

  test "should get new" do
    get :new, :post_id=> @post.id
    assert_response :success
  end

  test "should create paragraph" do
    assert_difference('Paragraph.count') do
      post :create, paragraph: { body: @paragraph.body }, :post_id=> @post.id
    end

    assert_redirected_to paragraph_path(assigns(:paragraph))
  end

  test "should show paragraph" do
    get :show, id: @paragraph, :post_id=> @post.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paragraph, :post_id=> @post.id
    assert_response :success
  end

  test "should update paragraph" do
    put :update, id: @paragraph, paragraph: { body: @paragraph.body }, :post_id=> @post.id
    assert_redirected_to paragraph_path(assigns(:paragraph))
  end

  test "should destroy paragraph" do
    assert_difference('Paragraph.count', -1) do
      delete :destroy, id: @paragraph, :post_id=> @post.id
    end

    assert_redirected_to paragraphs_path
  end
end
