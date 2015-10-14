require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test 'should get show' do
    get :show, id: User.last.id
    assert_response :success
    assert_not_nil assigns(:user)
  end

  test 'should post create' do
    assert_difference('User.count') do
      post :create, user: {
         name: 'foo bar',
         email: 'foo-bar@example.com',
         password: 'password'
      }
    end
    assert_response 302
  end

  test 'should not create' do
    assert_difference('User.count', 0) do
      post :create, user: { name: 'foo bar' }
    end
    assert_response 200
  end

end
