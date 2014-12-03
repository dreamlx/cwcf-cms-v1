class BlankMailer < ActionMailer::Base
  default from: "cwcf_dev@163.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.confirm.subject
  #
  def confirm(blank)
    @blank = blank
    mail(to: @blank.email, subject: "您的参展申请已经审核通过", from: "cwcf_dev@163.com", date: Time.now)
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
