class Client < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }
  validates :father_name, presence: true, length: { maximum: 100 }
  validates :phone, presence: true, length: { maximum: 100 }
  validates :email, presence: true, length: { maximum: 100 }, uniqueness: true
  validates :date_of_birth, presence: true, length: { maximum: 100 }
  validates :address, presence: true, length: { maximum: 200 }
  validates :city, presence: true, length: { maximum: 100 }
  validates :pin_zip, presence: true, length: { maximum: 100 }
  validates :state, presence: true, length: { maximum: 100 }
  validates :country, presence: true
  validates :notes, presence: true, length: { maximum: 2000 }

  def country_name
    ISO3166::Country[country].name
  end

  has_many :fees, dependent: :destroy
  has_many :lawsuits, dependent: :destroy
end
