class ChangeDefaultsForSpots < ActiveRecord::Migration
  def change
  	change_column :spots, :rating, :integer, :default => 4
  	change_column :spots, :rating_count, :float, :default => 1
  end
end
