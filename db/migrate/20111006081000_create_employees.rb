class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.string :name
      t.string :address
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :employees
  end
end
