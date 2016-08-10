class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  include Demographics

  has_many :micros, foreign_key: "user_id", class_name:"MicroAggression"
  
end
