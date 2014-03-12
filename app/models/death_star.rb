class DeathStar < ActiveRecord::Base
  has_many :rooms
  has_many :reactors
  has_many :ports
end
