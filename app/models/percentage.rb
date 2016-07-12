class Percentage < ActiveRecord::Base
  has_many :properties
  has_many :units
end
