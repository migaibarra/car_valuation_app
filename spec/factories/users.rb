FactoryBot.define do
  factory :user do
    fake_first_name = Faker::Name.first_name
    fake_last_name = Faker::Name.last_name
    
    first_name fake_first_name
    last_name fake_last_name
    email "#{fake_first_name}.#{fake_last_name}@example.com"
    password "Pa$$w0rd"
  end
end
