FactoryGirl.define do
	genders = ["Other","Non-gender Conforming","Gender-fluid","Agender","Trans-Femme","Trans-Masc","Female","Male","Unsure"].freeze
	races = ['Other',"Black", "Asian","Indian","Mixed-Race","Latino/Latina", "Native-American","White"].freeze
	industries = %w(Real-estate Healthcare/Medicine Law Technology Marketing/Advertising Finance Non-profit Retail Food-industry Government Transportation Education Agriculture Mining Construction Arts/Entertainment Social-Services Other).freeze
  
  factory :user do
		email		  {Faker::Internet.email}
		password	{"password"}
  	industry  {industries.sample}
  	zipcode   {Faker::Address.zip_code}
  	race 			{races.sample}
  	gender 		{genders.sample}
  	age 			{rand(1..10)}
    
  end
end
