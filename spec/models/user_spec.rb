require 'rails_helper'

RSpec.describe User, type: :model do
  context 'set up ' do 
		let(:user) {FactoryGirl.create(:user)} 
  	it '#initialize' do
  	end
  end
end
