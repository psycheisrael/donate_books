FactoryBot.define do
  factory :book do
    availability {"my string"}
    author{"my string"}
    genre {"my string"}
    title{ "my string"}
    copies_available { 3 }
    user_id { FactoryBot.create(:user).id }
  end
end
