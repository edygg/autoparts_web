class OrderDetail < ActiveRecord::Base
	belongs_to :replacement
	belongs_to :order
end
