class Item
	attr_accessor :empty

	def initialize
		@packed = true
	end

	def delete
		@packed = false
	end 

	def packed?
		@packed
	end 


end
