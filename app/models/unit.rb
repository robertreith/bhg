class Unit < ActiveRecord::Base
  belongs_to :property
  belongs_to :percentage
end
