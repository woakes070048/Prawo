class Lawsuit < ApplicationRecord
  validates :case_number, presence: true, length: { maximum: 200 }
  validates :case_type, presence: true, length: { maximum: 200 }
  validates :court_name, presence: true, length: { maximum: 200 }
  validates :location, presence: true, length: { maximum: 200 }
  validates :filing_date, presence: true
  validates :opposite_party, presence: true, length: { maximum: 200 }
  validates :case_details, presence: true

  belongs_to :client
end
