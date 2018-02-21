class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable and :registerable,
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable


  validates :name, presence: true, length: { maximum: 200 }
  validates :father_name, presence: true, length: { maximum: 200 }
  validates :job_title, presence: true, length: { maximum: 200 }
  validates :date_of_birth, presence: true
  validates :phone, presence: true, length: { maximum: 200 }
  validates :address, presence: true, length: { maximum: 200 }
  validates :city, presence: true, length: { maximum: 200 }
  validates :pin_zip, presence: true, length: { maximum: 200 }
  validates :state, presence: true, length: { maximum: 200 }
  validates :country, presence: true, length: { maximum: 200 }
  validates :notes, presence: true, length: { maximum: 2000 }

  def country_name
    ISO3166::Country[country].name
  end
end
