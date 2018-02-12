class Fee < ApplicationRecord
  validates :details, presence: true, length: { maximum: 200 }
  validates :amount, presence: true, numericality: true

  belongs_to :client
end
