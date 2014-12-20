# Order 状态更改

class OrderMailer < ActionMailer::Base
  default from: "fair@ewatch.cn"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.confirm.subject
  #
  def confirm(order)
    @order = order
    @user = Refinery::User.find(@order.user_id)
    mail(to: @user.email, subject: "您的订单已经创建，请等待后台审批", from: "fair@ewatch.cn", date: Time.now)
  end
end
