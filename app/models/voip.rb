class Voip < ApplicationRecord

  has_one :provider

  # validates :provider_id, presence: true

  validates :quantity_vvx301, numericality: true
  validates :quantity_vvx401, numericality: true

  validates :first_name, presence: true
  validates :last_name, presence: true

  validates :email, presence: true,
                    format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create, message: 'Email address is not formatted correctly.' }

  validates :phone, numericality: true,
                    presence: true

  validates :business_phone, numericality: true,
                             presence: true

  validates :zip, presence: true,
                  numericality: true,
                  length: { minimum: 5, maximum: 5 }

end
