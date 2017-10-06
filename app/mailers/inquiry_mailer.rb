class InquiryMailer < ApplicationMailer
  ##### 送信元アドレス
  default from: "munjapan8888@gmail.com"
  ##### 送信先アドレス
  default to: "munjapan@hotmail.com"

  def received_email(inquiry)
    ##### メール件名
    mail_subject = "251technologyの問い合わせフォームから問い合わせがありました"

    @inquiry = inquiry
    mail(:subject => mail_subject)
  end

  def welcome_email(inquiry)
    @inquiry = inquiry  
    mail(to: @inquiry.email, subject: '251Technologyへの問い合せありがとうございます。')
  end

end