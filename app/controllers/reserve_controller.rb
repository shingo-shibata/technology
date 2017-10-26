class ReserveController < ApplicationController
 ##### 問い合わせフォーム画面を表示する
  def index
    @reserve = Reserve.new
    render :action => 'index'
  end

  ##### 問い合わせフォームから入力された内容をチェックする
  def confirm
    @reserve = Reserve.new(reserve_params)
    if @reserve.valid?
      # 入力内容に問題ない場合、問い合わせ確認画面を表示
      render :action => 'confirm'
    else
      # 入力内容に問題ある場合、問い合わせ画面を再表示
      render :action => 'index'
    end
  end

  ##### 問い合わせ完了画面の処理
  def thanks
    @reserve = Reserve.new(reserve_params)
    
    if params[:back]
      render :action => 'index'
      
    else
      # 問い合わせ内容をメール送信
      @reserve = Reserve.new(reserve_params)
      ReserveMailer.received_email(@reserve).deliver
      ReserveMailer.welcome_email(@reserve).deliver 
  
      # 問い合わせ完了画面を表示する
      render :action => 'thanks'
    end
  end

  ##### Strong Parametersで問い合わせ画面からの入力を許可するリクエストパラメータを指定する
  def reserve_params
    params.require(:reserve).permit(
      :reserved_day, :name, :sponsor, :belonging, :email, :phone, :post, :address1, :address2, :message
    )
  end
end
