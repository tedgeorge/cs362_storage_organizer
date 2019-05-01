class Item < ApplicationRecord
	belongs_to :storage_container
	validates :description, :name, presence: true
	
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
	end 

	def mark_as_packed
		self.packed = true
	end

	def edit_name(new_name)
		self.name = new_name
	end

end
