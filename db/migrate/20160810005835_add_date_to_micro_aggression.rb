class AddDateToMicroAggression < ActiveRecord::Migration
  def change
  	add_column :micro_aggressions, :date, :date
  end
end
