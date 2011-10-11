class CreateGlobomaxsystems < ActiveRecord::Migration
  def self.up
    create_table :globomaxsystems do |t|
      t.string :name
      t.string :developer

      t.timestamps
    end
  end

  def self.down
    drop_table :globomaxsystems
  end
end
