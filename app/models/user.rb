class User < ApplicationRecord
  #名前空白・長さ
  validates :name, presence: true, lenght:{maximum: 15}
  
  #メアド空白・~@~.~ になってるはず？
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
  
  #パスワード空白・文字数・ローマ字数字
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])[a-z\d]{8,32}+\z/
  validates :password, presence: true, lenght: {in: 8..32}, format: {with: VALID_PASSWORD_REGEX}
  
  
  has_secure_password
end
