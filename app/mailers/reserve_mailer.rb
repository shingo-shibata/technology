class ReserveMailer < ApplicationMailer
  ##### 送信元アドレス
  default from: "no_replay@edutech.co.jp"
  ##### 送信先アドレス
  default to: "admin@edutech.co.jp"

  def received_email(reserve)
    ##### メール件名
    mail_subject = "テクノロジー講座へのお申し込みがありました"

    @reserve = reserve
    mail(:subject => mail_subject)
  end

  def welcome_email(reserve)
    @reserve = reserve
    mail(to: @reserve.email, subject: 'テクノロジー講座へのお申し込みありがとうございます。')
  end

end