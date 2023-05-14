# frozen_string_literal: true

require 'application_system_test_case'

# BEGIN
class PostTest < ApplicationSystemTestCase
    setup do
      @post = posts(:one)
    end
  
    test 'visiting the index' do
      visit posts_url
      assert_selector 'h1', text: 'Posts'
    end
  
    test 'creating a Post' do
      visit posts_url
      click_on 'New Post'
      fill_in 'Title', with: 'Some Article'
      click_on 'Create Post'
  
      assert_text 'Post was successfully created'
    end
  
    test 'updating a Post' do
      visit posts_url
      click_on 'Edit', match: :first
      fill_in 'Title', with: 'Some Article'
      click_on 'Update Post'
  
      assert_text 'Post was successfully updated'
    end
  
    test 'destroying a Post' do
      visit posts_url
      page.accept_confirm do
        click_on 'Destroy', match: :first
      end
  
      assert_text 'Post was successfully destroyed'
    end
  end
# END
