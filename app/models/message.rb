class Message < ApplicationRecord
  belongs_to :user

  validates :user_id, numericality: {greater_than_or_equal_to: 1}
end
