class Structure < ActiveRecord::Base
  self.abstract_class = true
  composed_of :location, :mapping => [%w(x x), %w(y y), %w(z z)]
end