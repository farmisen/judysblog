require 'test_helper'

class BlocksControllerTest < ActionController::TestCase
  setup do
    @block = blocks(:one)
    @post = posts(:one)
  end

  test "should get index" do
    get :index, :post_id=> @post.id
    assert_response :success
    assert_not_nil assigns(:blocks)
  end

  test "should get new" do
    get :new, :post_id=> @post.id
    assert_response :success
  end

  test "should create block" do
    assert_difference('Block.count') do
      post :create, block: { body: @block.body }, :post_id=> @post.id
    end

    assert_redirected_to block_path(assigns(:block))
  end

  test "should show block" do
    get :show, id: @block, :post_id=> @post.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @block, :post_id=> @post.id
    assert_response :success
  end

  test "should update block" do
    put :update, id: @block, block: { body: @block.body }, :post_id=> @post.id
    assert_redirected_to block_path(assigns(:block))
  end

  test "should destroy block" do
    assert_difference('Block.count', -1) do
      delete :destroy, id: @block, :post_id=> @post.id
    end

    assert_redirected_to blocks_path
  end
end
