class AddUserCharacteristics < ActiveRecord::Migration
  def change
  	add_column :users, :industry, :string
  	add_column :users, :zipcode, :string
  	add_column :users, :race, :string
  	add_column :users, :gender, :string
  	add_column :users, :age, :string
  end
end
