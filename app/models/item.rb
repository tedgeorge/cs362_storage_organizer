class Item < ApplicationRecord
	belongs_to :storage_container
	# attr_accessor :empty, :name

	# def initialize
	# 	@name
	# 	@packed = true
	# end

	def delete
		self.packed = false
	end 

	def packed?
		self.packed
		# self.find_by 
	end 

	def mark_as_packed
		self.packed = true;
	end


end
