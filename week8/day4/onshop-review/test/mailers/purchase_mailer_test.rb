require 'test_helper'

class PurchaseMailerTest < ActionMailer::TestCase
  test "confirmation" do
    item  = Item.create!(name: 'foobar', price: '10000')
    user  = User.new(email: 'foo-bar@example.com')
    cart  = SessionCart.new({ cart_items: [item.id] })
    mail  = PurchaseMailer.confirmation(user, cart)
    assert_equal "Purchase Confirmation Receipt!", mail.subject
    assert_equal [user.email], mail.to
    assert_equal ["admin@example.com"], mail.from
    assert_match "Thank you for your purchase!", mail.body.encoded
    assert_match "Total: $100.00", mail.body.encoded
  end
end
