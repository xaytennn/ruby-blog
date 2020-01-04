require "application_system_test_case"

class PagePostsTest < ApplicationSystemTestCase
  setup do
    @page_post = page_posts(:one)
  end

  test "visiting the index" do
    visit page_posts_url
    assert_selector "h1", text: "Page Posts"
  end

  test "creating a Page post" do
    visit page_posts_url
    click_on "New Page Post"

    fill_in "Body", with: @page_post.body
    fill_in "Title", with: @page_post.title
    click_on "Create Page post"

    assert_text "Page post was successfully created"
    click_on "Back"
  end

  test "updating a Page post" do
    visit page_posts_url
    click_on "Edit", match: :first

    fill_in "Body", with: @page_post.body
    fill_in "Title", with: @page_post.title
    click_on "Update Page post"

    assert_text "Page post was successfully updated"
    click_on "Back"
  end

  test "destroying a Page post" do
    visit page_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Page post was successfully destroyed"
  end
end
