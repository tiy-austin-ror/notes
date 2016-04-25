require 'test_helper'

class TaskMailerTest < ActionMailer::TestCase
  test "created_task" do
    mail = TaskMailer.created_task(Todo.new)
    assert_equal "New Todo Task", mail.subject
    assert_equal ["justin@theironyard.com"], mail.to
    assert_equal ["no-reply@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
