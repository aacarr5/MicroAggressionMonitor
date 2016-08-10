require 'rails_helper'

RSpec.describe Micro, type: :model do
  context 'initialziation' do

  	let(:user) {FactoryGirl.create(:user)}
  	let(:micro) {FactoryGirl.create(:micro,user_id:nil)}

  	it '#initialization' do 
  		expect(user).to be_a User
  	end

  	it 'associates' do
  		user.micros << micro
  		expect(user.micros.first).to eq(micro)
  	end

  end
end
