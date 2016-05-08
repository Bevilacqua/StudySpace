class CreateSoundLevels < ActiveRecord::Migration
  def change
    create_table :sound_levels do |t|
      t.references :user, index: true
      t.references :spot, index: true
      t.integer :value, :default => 2

      t.timestamps
    end
  end
end
