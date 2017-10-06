class Inquiry < ActiveRecord::Base
  validates :name,   length: { minimum: 2, :too_short => '名前を入力して下さい。'}, presence: true
  validates :email,  length: { minimum: 3, :too_short => 'メールアドレスを入力して下さい。'}, presence: true
  validates_numericality_of :phone, { :message => '電話番号は数字で入力して下さい。'}
  validates :message, length: { minimum: 2, :message => '問い合わせ内容を入力して下さい。'}, presence: true
end
