class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  geocoded_by :current_ip_address
  after_validation :geocode      

  def current_ip_address
    "#{self.current_sign_in_ip}"
  end
end
