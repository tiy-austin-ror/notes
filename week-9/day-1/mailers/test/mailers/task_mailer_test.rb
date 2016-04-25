require 'test_helper'

class TaskMailerTest < ActionMailer::TestCase
  test "created_task" do
    mail = TaskMailer.created_task
    assert_equal "Created task", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
