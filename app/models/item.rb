class Item < ApplicationRecord

  validates :item_type, presence: true
  validates :color, presence: true
  validates :condition, presence: true
  validates_length_of :comment, maximum: 100

  belongs_to :kit

end
