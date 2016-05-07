class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.text :name
      t.text :location
      t.text :description
      t.integer :type
      t.float :sound_level
      t.float :rating
      t.integer :rating_count
      t.integer :checkin_count

      t.timestamps
    end
  end
end
