class FixDefaultForCurrentSoundLevel < ActiveRecord::Migration
  def change
  	change_column :spots, :current_sound_level, :float, :default => 2
  end
end
