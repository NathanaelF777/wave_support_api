class User < ApplicationRecord
  has_many :tickets
  has_many :user_messages, through: :tickets
end
