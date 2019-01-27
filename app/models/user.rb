class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :username, length:{minimum:4, maximum:50}, presence: true
  validates :email, length:{maximum: 255}, presence: true,
    format:{with:VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
    validates :password, length:{minimum: 6, maximum: 255}, presence:true
end
