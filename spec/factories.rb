FactoryBot.define do

  
  factory :user do
    username "Juan"
    email  "jdiaz@miuandes.cl"
    password "password"
  end

  factory :message do
    user_id 1
    date '2018-05-26 21:31:21'
    content "Hello"
  end
  # Add other factories in here
end

