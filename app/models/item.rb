class Item
	attr_accessor :empty, :name

	def initialize
		@name
		@packed = true
	end

	def delete
		@packed = false
	end 

	def packed?
		@packed
	end 


end
