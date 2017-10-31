class Internet < ApplicationRecord
  has_one :provider

  validates :cable_provider_id, presence: true
  validates :number_computers, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  # validates :business_name, presence: true
  # validates :business_phone, presence: true
  # validates :street_address_1, presence: true
  # validates :street_address_2, presence: true
  # validates :city, presence: true
  # validates :state, presence: true
  # validates :zip, presence: true

end
