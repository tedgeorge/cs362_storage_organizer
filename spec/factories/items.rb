FactoryBot.define do
  factory :item do
    sequence(:name) {|n| "Item #{n}"}
    description { "Lorem Ipsum for #{:name}"}

    factory :packed do
      packed { true }
     end

    factory :not_packed do
      packed { false }
    end
  end
end