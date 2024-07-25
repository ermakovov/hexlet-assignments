require 'test_helper'

class BulletinsControllerTest < ActionDispatch::IntegrationTest
  test 'should open all bulletins page' do
    bulletin = bulletins(:first)

    get bulletins_url
    assert_response :success
    assert_select 'a', bulletin.title
  end

  test 'should open page with the bulletin' do
    bulletin = bulletins(:third)

    get bulletin_url(bulletin)
    assert_response :success
    assert_select 'h2', bulletin.title
    assert_select 'p', bulletin.body
  end
end
