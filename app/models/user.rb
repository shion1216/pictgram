class User < ApplicationRecord
  
  #パスワード空白・文字数・ローマ字数字
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])[a-z\d]{8,32}+\z/
  validates :password, presence: true, length: {in: 8..32}, format: {with: VALID_PASSWORD_REGEX}
  
  
  #名前空白・長さ
  validates :name, presence: true, length:{maximum: 15}
  
  #メアド空白・~@~.~ になってるはず？
  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
  
  has_secure_password
  
  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'
end
