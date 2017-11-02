class Internet < ApplicationRecord

  belongs_to :provider

  validates :provider_id, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :phone, presence: true

end
