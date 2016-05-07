class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.belongs_to :user, index: true
      t.belongs_to :spot, index: true
      t.text :description

      t.timestamps
    end
  end
end
