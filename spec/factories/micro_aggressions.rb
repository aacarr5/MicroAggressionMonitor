FactoryGirl.define do

	aggressors = ["family member","co-worker", "superior","subordinate", "patron", "other"]

  factory :micro_aggression do
    user_id 		{rand(1..10)}
    location 		{Faker::Pokemon.location}
    description {Faker::Lorem.sentence}
    aggressor 	{aggressors.sample} 
    severity 		{rand(1..10)}
  end
end
