class RenameSoundLevelInSpots < ActiveRecord::Migration
  def change
  	rename_column :spots, :sound_level, :current_sound_level
  end
end
