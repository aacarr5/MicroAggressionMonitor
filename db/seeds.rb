10.times do |count|
	user = FactoryGirl.create(:user,email:count.to_s+"@gmail.com")
	10.times {FactoryGirl.create(:micro,user_id:user.id)}
end