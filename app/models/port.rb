class Port < Structure
  belongs_to :death_star
  belongs_to :metal
  has_many :work_orders, as: :workable
end
