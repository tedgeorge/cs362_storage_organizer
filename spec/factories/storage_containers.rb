FactoryBot.define do 
	factory :storage_container do
		sequence(:name) {|n| "Storage Container #{n}"}
	end

end