class League < ApplicationRecord

  has_many :items
  has_many :clubs

end
