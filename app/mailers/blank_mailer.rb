# 申请参展 + 记者证申请的邮件

class BlankMailer < ActionMailer::Base
  default from: "fair@ewatch.cn"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.confirm.subject
  #
  def confirm(blank)
    @blank = blank
    mail(to: @blank.email, subject: "您的参展申请已经审核通过", from: "fair@ewatch.cn", date: Time.now)
  end

  def apply(blank)
    @blank = blank
    mail(to: @blank.email, subject: "申请参展确认函", date: Time.now)
  end

  def deny(blank)
    @blank = blank
    mail(to: @blank.email, subject: "您的申请没有通过审核", date: Time.now)
  end
end
