class Document < ApplicationRecord
  validates :name, presence: true, length: { maximum: 200 }

  belongs_to :lawsuit
end
