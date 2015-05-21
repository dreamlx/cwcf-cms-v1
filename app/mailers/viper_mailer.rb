# 申请参展 + 记者证申请的邮件

class ViperMailer < ActionMailer::Base
  default from: "fair@ewatch.cn"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.confirm.subject
  #
  def confirm(viper)
    @viper = viper
    if @viper.app_type == "vip"
      mail(to: @viper.email,
          subject: "您的参展申请已经审核通过",
          from: "fair@ewatch.cn",
          date: Time.now,
          content_type: "text/html",
          body: "亲爱的买家：
恭喜您！您所提交的资料已经审核通过，随后我们将会安排相关的工作人员与您联系，请您携带有效证件（身份证及名片）到展会现场VIP接待处领取VIP买家证。


展览时间：
2015-06-25 至 2015-06-28 

展览地点： 
深圳会展中心(1、9号馆) 

参观规则： 
        §Exhibit_Rule§  

如果您需要更多的信息，请您同我们联络，我们希望能够在“2015中国（深圳）国际钟表展览会 ”与您见面。 

主办信息:
2015中国（深圳）国际钟表展览会 
电话：0755-82945180
传真：0755-82941162 
通信地址：深圳市福田保税区市花路福年广场B栋302室
邮箱：davy@ewatch.cn

"
          )
    else
      mail( to: @viper.email,
            subject: "您的申请已经审核通过",
            from: "fair@ewatch.cn",
            date: Time.now,
            body: "亲爱的客户：
恭喜您！您所提交的资料已经审核通过，随后我们将会安排相关的工作人员与您联系，请您携带有效证件（身份证、参展商证）到展会现场领取晶品荟招待卡。




展览时间：
2015-06-25 至 2015-06-28 

展览地点： 
深圳会展中心(1、9号馆) 

参观规则： 
        §Exhibit_Rule§  

如果您需要更多的信息，请您同我们联络，我们希望能够在“2015中国（深圳）国际钟表展览会 ”与您见面。 

主办信息:
2015中国（深圳）国际钟表展览会 
电话：0755-82945180
传真：0755-82941162 
通信地址：深圳市福田保税区市花路福年广场B栋302室
邮箱：davy@ewatch.cn
")
    end
  end

  def apply(viper)
    @viper = viper
    if @viper.app_type == "vip"
      mail(to: @viper.email, subject: "申请参展确认函", date: Time.now,
        body: "亲爱的朋友：
您的申请我们已经收到了 请耐心等待回复")
    else
      mail( to: @viper.email,
            subject: "申请确认",
            date: Time.now,
            body: "亲爱的朋友：
您的申请我们已经收到了 请耐心等待回复")
    end
  end

  def deny(viper)
    @viper = viper
    if @viper.app_type == "vip"
      mail(to: @viper.email, subject: "您的申请没有通过审核", date: Time.now,
        body: "您好，很抱歉，您所提交的信息不详细，请重新申请。


（提醒：打“*”号为必填项，请提交个人详细信息）

展览时间： 2015-06-25 至 2015-06-28 
 展览地点：  深圳会展中心(1、9号馆)  
如果您需要更多的信息，请您同我们联络，我们希望能够在“2015中国（深圳）国际钟表展览会 ”与您见面。   主办信息: 2015中国（深圳）国际钟表展览会  电话：0755-82945180 传真：0755-82941162  通信地址：深圳市福田保税区市花路福年广场B栋302室 邮箱：davy@ewatch.cn"
        )
    else
      mail( to: @viper.email,
            subject: "您的申请没有通过审核",
            date: Time.now,
            body: "您好，很抱歉，您所提交的信息不详细，请重新申请。


（提醒：打“*”号为必填项，请提交个人详细信息）

展览时间： 2015-06-25 至 2015-06-28 
 展览地点：  深圳会展中心(1、9号馆)  
如果您需要更多的信息，请您同我们联络，我们希望能够在“2015中国（深圳）国际钟表展览会 ”与您见面。   主办信息: 2015中国（深圳）国际钟表展览会  电话：0755-82945180 传真：0755-82941162  通信地址：深圳市福田保税区市花路福年广场B栋302室 邮箱：davy@ewatch.cn"
)
    end
  end
end
