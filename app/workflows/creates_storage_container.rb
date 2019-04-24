class CreatesStorageContainer
	attr_accessor :name, :storage_container

	def initialize(name: "")
		@name = name
	end

	def build
		self.storage_container = StorageContainer.new(name: name)
		storage_container
	end

	def create
		build
		storage_container.save
	end
end