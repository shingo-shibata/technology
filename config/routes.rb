Rails.application.routes.draw do
  root to: 'static_pages#home'
  
  get "static_pages/seminar" => 'static_pages#seminar'
  get "static_pages/middle" => 'static_pages#middle'
  get "static_pages/pmo" => 'static_pages#pmo'
  get "static_pages/about" => 'static_pages#about'
  get "static_pages/approach" => 'static_pages#approach'
  get "static_pages/member" => 'static_pages#member'  
  get "static_pages/voice" => 'static_pages#voice'  
  


  ##### 問い合わせフォーム
  get 'inquiry' => 'inquiry#index' 
  get 'inquiry/confirm' => redirect("/inquiry")
  get 'inquiry/thanks' => redirect("/inquiry")
  ##### 問い合わせ確認画面
  post 'inquiry/confirm' => 'inquiry#confirm'
  ##### 問い合わせ完了画面
  post 'inquiry/thanks' => 'inquiry#thanks'
  
  ##### 申し込みフォーム
  get 'reserve' => 'reserve#index' 
  get 'reserve/confirm' => redirect("/reserve")
  get 'reserve/thanks' => redirect("/reserve")
  ##### 申し込み確認画面
  post 'reserve/confirm' => 'reserve#confirm'
  ##### 申し込み完了画面
  post 'reserve/thanks' => 'reserve#thanks'
end