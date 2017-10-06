class ReserveMailer < ApplicationMailer
  ##### 送信元アドレス
  default from: "munjapan8888@gmail.com"
  ##### 送信先アドレス
  default to: "munjapan@hotmail.com"

  def received_email(reserve)
    ##### メール件名
    mail_subject = "テクテック講座へのお申し込みがありました"

    @reserve = reserve
    mail(:subject => mail_subject)
  end

  def welcome_email(reserve)
    @reserve = reserve
    mail(to: @reserve.email, subject: 'テクテック講座へのお申し込みありがとうございます。')
  end

end