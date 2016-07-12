class Property < ActiveRecord::Base
  has_many :percentages
  has_many :units
end
