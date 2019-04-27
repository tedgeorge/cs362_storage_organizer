class CreatesStorageContainer
	attr_accessor :name, :storage_container

	def initialize(name: "")
		@success = false
		@name = name
	end

	def success?
		@success
	end

	def build
		self.storage_container = StorageContainer.new(name: name)
		storage_container
	end

	def create
		build
		result = storage_container.save
		@success = result
	end
end