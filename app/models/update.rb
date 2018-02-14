class Update < ApplicationRecord
  validates :title, presence: true, length: { maximum: 200 }
  validates :details, presence: true, length: { maximum: 2000 }

  belongs_to :lawsuit
end
