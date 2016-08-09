class CreateMicroAggressions < ActiveRecord::Migration
  def change
    create_table :micro_aggressions do |t|
      t.integer :user_id
      t.string :location
      t.text :description
      t.string :aggressor
      t.integer :severity

      t.timestamps null: false
    end
  end
end
