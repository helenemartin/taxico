class Taxi < ActiveRecord::Base

  has_many :bookings

  validates :name, presence: true
  validates :phone_number, presence: true, length: { maximum: 11 }
  validates :number_of_taxis, numericality: true

end
