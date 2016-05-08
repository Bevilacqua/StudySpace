class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :uname
      t.text :ip_adr

      t.timestamps
    end
  end
end
