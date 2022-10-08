require 'test_helper'

class BulletinsControllerTest < ActionDispatch::IntegrationTest
  self.use_transactional_tests = true

  test 'test_oneps_home_page' do
    get root_path

    assert_response :success
    assert_select 'h1', 'Bulletins'
  end

  test 'test_opens_single_bulletin_page' do
    get bulletin_path(bulletins(:bulletin_one))
    assert_response :success
    assert_select 'h1', 'Bulletin description'
    assert_select 'h4', 'My_Titile'
    assert_select 'p', 'My_Body'
  end
end
