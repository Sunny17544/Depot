# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/order_mailer/received
  def received
    order = Order.new(name: "sunny", address: "vzm",  email: "roy.sandeepchris@gmail.com", pay_type: "Debit card")
    OrderMailer.recieved(@order).deliver_later
  end

  # Preview this email at http://localhost:3000/rails/mailers/order_mailer/shipped
  def shipped
    OrderMailer.shipped
  end

end
