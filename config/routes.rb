Rails.application.routes.draw do
  get 'learning/index'

  root to: 'static_pages#home'
  
  get "static_pages/seminar" => 'static_pages#seminar'
  get "static_pages/seminar2" => 'static_pages#seminar2'
  get "static_pages/middle" => 'static_pages#middle'
  get "static_pages/pmo" => 'static_pages#pmo'
  get "static_pages/about" => 'static_pages#about'
  get "static_pages/approach" => 'static_pages#approach'
  get "static_pages/member" => 'static_pages#member'  
  get "static_pages/voice" => 'static_pages#voice'  
  get "static_pages/privacy" => 'static_pages#privacy' 
  get "static_pages/development" => 'static_pages#development' 
  get "static_pages/media" => 'static_pages#media'
  get "static_pages/sitemap" => 'static_pages#sitemap'  
  
  ##### メディアリンク
  get "static_pages/ainow" => redirect("http://ainow.ai/")
  get "static_pages/robotstart" => redirect("https://robotstart.info/")
  get "static_pages/ai4u" => redirect("http://ai-4-u.com/")
  get "static_pages/seamless" => redirect("http://shiropen.com/")
  get "static_pages/mit" => redirect("https://www.technologyreview.jp/")
  get "static_pages/deeplearning" => redirect("https://github.com/dennybritz/deeplearning-papernotes/blob/master/README.md")
  
  get "static_pages/iotnews" => redirect("https://iotnews.jp/")
  get "static_pages/iottoday" => redirect("http://iottoday.jp/")
  get "static_pages/monoist" => redirect("http://monoist.atmarkit.co.jp/")
  get "static_pages/techfactory" => redirect("http://techfactory.itmedia.co.jp/")
  
  get "static_pages/bcbiz" => redirect("http://gaiax-blockchain.com/")
  get "static_pages/btcn" => redirect("https://btcnews.jp/")
  get "static_pages/doublehash" => redirect("http://doublehash.me/")
  
  get "static_pages/netcommerce" => redirect("https://www.netcommerce.co.jp/blog")
  get "static_pages/itpro" => redirect("http://itpro.nikkeibp.co.jp/")
  get "static_pages/itmedia" => redirect("http://www.itmedia.co.jp/")
  get "static_pages/techcrunch" => redirect("http://jp.techcrunch.com/")
  get "static_pages/bridge" => redirect("http://thebridge.jp/")
  get "static_pages/cloud" => redirect("https://cloud.watch.impress.co.jp/")
  
  get "static_pages/moguravr" => redirect("http://www.moguravr.com/")
  get "static_pages/vrbeat" => redirect("http://www.vrbeat.net/")
  
  get "static_pages/drone" => redirect("https://www.drone.jp/")
  get "static_pages/dronemedia" => redirect("http://dronemedia.jp/")
  get "static_pages/bank" => redirect("https://dronebank.jp/")
  
  get "static_pages/makers" => redirect("http://makerslove.com/")
  get "static_pages/itmedia3d" => redirect("http://www.itmedia.co.jp/keywords/3d_printer.html")
  
  get "static_pages/marketing" => redirect("http://marketing.itmedia.co.jp/")
  get "static_pages/digiday" => redirect("http://digiday.jp/")
  get "static_pages/markezine" => redirect("https://markezine.jp/")
  
  get "static_pages/fintechonline" => redirect("https://fintechonline.jp/")
  get "static_pages/itmediafintech" => redirect("http://www.itmedia.co.jp/enterprise/subtop/fintech/index.html")
  get "static_pages/finte" => redirect("https://www.enigma.co.jp/media/")
 
  ##### ノウハウ伝授リンク
  get "learning" => 'learning#index' 
  get "learning/shin-nihon" => redirect("http://www.meti.go.jp/committee/sankoushin/shin_sangyoukouzou/pdf/013_06_00.pdf")
  get "learning/business1" => 'learning#business1'
  get "learning/business2" => 'learning#business2'
  
  get "learning/data1" => 'learning#data1'
  get "learning/data2" => 'learning#data2'

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