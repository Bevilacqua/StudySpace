class RenameColumnTypeInSpot < ActiveRecord::Migration
  def change
  	rename_column :spots, :type, :stype
  end
end
