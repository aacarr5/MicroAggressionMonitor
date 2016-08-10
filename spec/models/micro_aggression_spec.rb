require 'rails_helper'

RSpec.describe MicroAggression, type: :model do
  context 'initialziation' do

  	let(:user) {FactoryGirl.create(:user)}
  	let(:micro) {FactoryGirl.create(:micro_aggression,user_id:nil)}

  	it '#initialization' do 
  		expect(user).to be_a User
  	end

  	it 'associates' do
  		user.micro_aggressions << micro
  		expect(user.micro_aggressions.first).to eq(micro)
  	end


  end
end
