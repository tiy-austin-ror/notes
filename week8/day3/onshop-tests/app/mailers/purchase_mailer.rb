class PurchaseMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.purchase_mailer.confirmation.subject
  #
  def confirmation(user, cart)
    @user = user
    @cart = cart
    mail to: @user.email, subject: "Purchase Confirmation Receipt!"
  end
end
