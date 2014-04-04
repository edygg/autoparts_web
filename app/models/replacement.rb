class Replacement < ActiveRecord::Base
  has_and_belongs_to_many :cars
  has_many :order_details
end
