class Iron < Metal
  has_many :ports, :foreign_key => "metal_id"
end