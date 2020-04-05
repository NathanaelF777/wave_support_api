class Admin < ApplicationRecord
  has_many :tickets
  has_many :admin_messages, through: :tickets
end
