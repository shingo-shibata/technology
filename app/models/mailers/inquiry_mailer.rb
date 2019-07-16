class InquiryMailer < ApplicationMailer
  ##### 送信元アドレス 
  default from: "edutech.reply.only@gmail.com"
  ##### 送信先アドレス
  default to: "admin@edutech.co.jp"

  def received_email(inquiry)
    ##### メール件名
    mail_subject = "問い合わせフォームから問い合わせがありました"

    @inquiry = inquiry
    mail(:subject => mail_subject)
  end

  def welcome_email(inquiry)
    @inquiry = inquiry  
    mail(to: @inquiry.email, subject: 'EduTech Partnarsへの問い合せありがとうございます。')
  end

end