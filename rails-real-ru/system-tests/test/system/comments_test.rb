# frozen_string_literal: true

require 'application_system_test_case'

# BEGIN
class CommentsTest < ApplicationSystemTestCase
    setup do
      @post = posts(:one)
    end
  
    test 'visiting the index' do
      visit posts_url
      assert_selector 'h1', text: 'Posts'
    end
    
    test 'visiting the post Two' do
      visit posts_url
      click_on 'Show', match: :first
      assert_selector 'h1', text: 'Two'
    end

    test 'creating a Comment' do
      visit '/posts/298486374'
      fill_in 'post_comment_body', with: 'New Comment'
      click_on 'Create Comment'
  
      assert_text 'Comment was successfully created.'
    end
  
    test 'updating a Comment' do
      visit '/posts/298486374'
      click_on 'Edit', match: :first

      fill_in 'post_comment_body', with: 'Update Comment'
      click_on 'Update Comment'

      assert_text 'Comment was successfully updated.'
    end
  
    test 'destroying a Comment' do
      visit '/posts/298486374'
      page.accept_confirm do
        click_on 'Delete', match: :first
      end
  
      assert_text 'Comment was successfully destroyed.'
    end
  end
# END
