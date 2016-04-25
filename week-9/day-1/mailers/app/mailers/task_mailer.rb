class TaskMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.task_mailer.created_task.subject
  #
  def created_task(todo)
    @greeting = "Hi"
    @message = "You Created a new Task:"
    @todo = todo

    mail to: "justin@theironyard.com", subject: "New Todo Task"
  end
end
