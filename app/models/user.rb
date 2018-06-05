class User < ApplicationRecord
  has_many :messages
  validates :username, uniqueness: true
  validates :email, uniqueness: true
  validates :username, length: { in: 1..20 }

end
