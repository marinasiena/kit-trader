class Kit < ApplicationRecord

  validates :trans_type, presence: true
  validates :zip_code, presence: true
  validates :club_id, presence: true
  validates :season, presence: true
  validates :user_id, presence: true, :on => :create
  validates_format_of :zip_code, :with => /\A(\d{5})\D?(\d{4})?\z/, :on => :create

  belongs_to :user

end
