class Item < ApplicationRecord

  validates :item_type, presence: true
  validates :color, presence: true
  validates :condition, presence: true

  belongs_to :kit

end
