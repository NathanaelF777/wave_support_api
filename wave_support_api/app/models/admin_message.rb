class AdminMessage < ApplicationRecord
  belongs_to :admin
  belongs_to :ticket
end
