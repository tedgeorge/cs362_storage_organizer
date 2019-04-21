class Item < ApplicationRecord
	belongs_to :storage_container
	# attr_accessor :empty, :name

	# def initialize
	# 	@name
	# 	@packed = true
	# end

	def delete
		@packed = false
	end 

	def packed?
		@packed
	end 


end
