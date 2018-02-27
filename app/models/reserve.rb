class Reserve < ActiveRecord::Base
  validates :reserved_day,  presence: { :message => '日程をチェックして下さい。'}
  validates :sponsor,  presence: { :message => '領収書先をチェックして下さい。'}
  validates :name,   length: { minimum: 2, :too_short => '名前を入力して下さい。'}
  validates :email,  length: { minimum: 3, :too_short => 'メールアドレスを入力して下さい。'}
  validates_numericality_of :phone, { :message => '電話番号は数字で入力して下さい。'}
  validates_numericality_of :post, { :message => '郵便番号は数字で入力して下さい。'}
  validates :address1,  length: { minimum: 1, :too_short => '都道府県を入力して下さい。'}
  validates :address2,  length: { minimum: 1, :too_short => '市区町村を入力して下さい。'}
end
