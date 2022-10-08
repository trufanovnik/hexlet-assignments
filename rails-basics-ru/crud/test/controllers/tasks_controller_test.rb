require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get root_url
    assert_response :success
  end

  test 'should get show' do
    get task_url(tasks(:one).id)
    assert_response :success
  end

  test 'should get edit' do
    get edit_task_url(tasks(:two).id)
    assert_response :success
  end

  test 'should update' do
    get task_url(tasks(:two).id)
    tasks(:two).name = 'NewName'
    assert_equal tasks(:two).name, 'NewName'
  end
end
