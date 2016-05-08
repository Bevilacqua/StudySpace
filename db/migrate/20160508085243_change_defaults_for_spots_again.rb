class ChangeDefaultsForSpotsAgain < ActiveRecord::Migration
  def change
  	change_column :spots, :rating, :float, :default => 4
  	change_column :spots, :rating_count, :integer, :default => 1
  end
end
