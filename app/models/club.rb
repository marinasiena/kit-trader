class Club < ApplicationRecord

  validates :long_name, presence: true
  validates :short_name, presence: true
  validates :location, presence: true
  validates :image, presence: true

  has_many :kits

end
