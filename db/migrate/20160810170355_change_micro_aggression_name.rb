class ChangeMicroAggressionName < ActiveRecord::Migration
  def change
  	rename_table :micro_aggressions, :micros
  end
end
