class Customer < ActiveRecord::Base
	self.primary_key = :identity
	has_many :orders
end
