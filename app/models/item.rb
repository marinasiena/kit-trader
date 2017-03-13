class Item < ApplicationRecord

  belongs_to :user
  belongs_to :club
  belongs_to :league

end
