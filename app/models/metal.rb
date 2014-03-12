class Metal < ActiveRecord::Base
  has_many :rooms
  
  validates :type, presence: true
  validates :density, numericality: true
  validates :cost, numericality: { greater_than_or_equal_to: 0 }
end
