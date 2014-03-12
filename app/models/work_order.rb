class WorkOrder < ActiveRecord::Base
  belongs_to :workable, polymorphic: true
end
