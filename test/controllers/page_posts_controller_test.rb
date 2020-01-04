require 'test_helper'

class PagePostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @page_post = page_posts(:one)
  end

  test "should get index" do
    get page_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_page_post_url
    assert_response :success
  end

  test "should create page_post" do
    assert_difference('PagePost.count') do
      post page_posts_url, params: { page_post: { body: @page_post.body, title: @page_post.title } }
    end

    assert_redirected_to page_post_url(PagePost.last)
  end

  test "should show page_post" do
    get page_post_url(@page_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_page_post_url(@page_post)
    assert_response :success
  end

  test "should update page_post" do
    patch page_post_url(@page_post), params: { page_post: { body: @page_post.body, title: @page_post.title } }
    assert_redirected_to page_post_url(@page_post)
  end

  test "should destroy page_post" do
    assert_difference('PagePost.count', -1) do
      delete page_post_url(@page_post)
    end

    assert_redirected_to page_posts_url
  end
end
