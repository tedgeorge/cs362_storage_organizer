FactoryBot.define do 
	factory :storage_container do
		name {|n| "Storage Container: #{n}"}
		description {|d| "Description: #{d}"}
	end

end