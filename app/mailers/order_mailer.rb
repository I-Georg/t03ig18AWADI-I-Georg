class OrderMailer < ApplicationMailer
 #source for the code Rails 5 book and https://dev.to/morinoko/sending-emails-in-rails-with-action-mailer-and-gmail-35g4
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
 default from: 'Ilina G <assignmentshopchocolate@gmail.com>'
 
  def received(order)
    @greeting = "Hi"
    @order = order
    mail(to: order.email, subject: 'Your Chocolate Bar order was received')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.shipped.subject
  #
  def shipped
    @greeting = "Hi"
     @order = order
    mail(to: order.email, subject: 'Your Chocolate Bar order was received')
  end
end
