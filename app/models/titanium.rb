class Titanium < Metal
  has_many :reactors, :foreign_key => "metal_id"
end