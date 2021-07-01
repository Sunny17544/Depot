require "test_helper"

class OrderMailerTest < ActionMailer::TestCase
  test "received" do
    mail = OrderMailer.received(orders(:one))
    assert_equal "Depot Shop Order Confirmation", mail.subject
    assert_equal ["roy.sandeepchris44@gmail.com"], mail.to
    assert_equal ["roy.sandeepchris@gmail.com"], mail.from
    assert_match /Recevied Test/, mail.body.encoded
  end

  test "shipped" do
    mail = OrderMailer.shipped(orders(:one))
    assert_equal "Depot Shop Order Shipped", mail.subject
    assert_equal ["roy.sandeepchris44@gmail.com"], mail.to
    assert_equal ["roy.sandeepchris@gmail.com"], mail.from
    assert_match /<td[^>]*>1<\/td>\s*<td>Shipped Test<\/td>/, mail.body.encoded
  end

end
