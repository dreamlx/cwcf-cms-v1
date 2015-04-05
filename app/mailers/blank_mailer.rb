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
    if @blank.apply_type == "ex_apply"
      mail(to: @blank.email,
          subject: "您的参展申请已经审核通过",
          from: "fair@ewatch.cn",
          date: Time.now,
          content_type: "text/html",
          body: "亲爱的参展商朋友：<br/>
          &nbsp;&nbsp;&nbsp;恭喜您，您所提交的参展申请已经审核通过，请携带个人名片、身份证及以下参展确认号至展会现场媒体接待处领取参展证。
          <ul>
            <li><a href='http://121.41.26.127/stores/1'>1号馆 左边部分</a></li>
            <li><a href='http://121.41.26.127/stores/3'>9号馆上半部分</a></li>
            <li><a href='http://121.41.26.127/stores/4'>1号馆 右边部分</a></li>
            <li><a href='http://121.41.26.127/stores/5'>9号馆下半部分</a></li>
          </ul>
          &nbsp;&nbsp;&nbsp;展览时间： 2015-06-25 至 2015-06-28 <br/>
          &nbsp;&nbsp;&nbsp;展览地点：  深圳会展中心(1、9号馆)  <br/>
          &nbsp;&nbsp;&nbsp;如果您需要更多的信息，请您同我们联络，我们希望能够在“2015中国（深圳）国际钟表展览会 ”与您见面。   主办信息: 2015中国（深圳）国际钟表展览会  电话：0755-82945180 传真：0755-82941162  通信地址：深圳市福田保税区市花路福年广场B栋302室 邮箱：davy@ewatch.cn"
          )
    else
      mail( to: @blank.email,
            subject: "您的记者证申请已经审核通过",
            from: "fair@ewatch.cn",
            date: Time.now,
            body: "亲爱的媒体朋友：
恭喜您，您所提交的记者证申请已经审核通过，请携带个人名片、身份证及以下记者证确认号至展会现场媒体接待处领取记者证。

展览时间： 2015-06-25 至 2015-06-28 
 展览地点：  深圳会展中心(1、9号馆)  
如果您需要更多的信息，请您同我们联络，我们希望能够在“2015中国（深圳）国际钟表展览会 ”与您见面。   主办信息: 2015中国（深圳）国际钟表展览会  电话：0755-82945180 传真：0755-82941162  通信地址：深圳市福田保税区市花路福年广场B栋302室 邮箱：davy@ewatch.cn")
    end
  end

  def apply(blank)
    @blank = blank
    if @blank.apply_type == "ex_apply"
      mail(to: @blank.email, subject: "申请参展确认函", date: Time.now)
    else
      mail( to: @blank.email,
            subject: "记者证申请确认",
            date: Time.now,
            body: "亲爱的媒体朋友：
您的记者证申请我们已经收到了 请耐心等待回复")
    end
  end

  def deny(blank)
    @blank = blank
    if @blank.apply_type == "ex_apply"
      mail(to: @blank.email, subject: "您的申请没有通过审核", date: Time.now,
        body: "您好，很抱歉，您所提交的信息不详细，请重新申请。


（提醒：打“*”号为必填项，请提交个人详细信息）

展览时间： 2015-06-25 至 2015-06-28 
 展览地点：  深圳会展中心(1、9号馆)  
如果您需要更多的信息，请您同我们联络，我们希望能够在“2015中国（深圳）国际钟表展览会 ”与您见面。   主办信息: 2015中国（深圳）国际钟表展览会  电话：0755-82945180 传真：0755-82941162  通信地址：深圳市福田保税区市花路福年广场B栋302室 邮箱：davy@ewatch.cn"
        )
    else
      mail( to: @blank.email,
            subject: "您的记者证申请没有通过审核",
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
