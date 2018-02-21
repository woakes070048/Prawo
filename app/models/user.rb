class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable and :registerable,
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable


  def country_name
    ISO3166::Country[country].name
  end
end
