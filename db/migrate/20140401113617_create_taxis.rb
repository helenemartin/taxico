class CreateTaxis < ActiveRecord::Migration
  def change
    create_table :taxis do |table|
      table.string :name
      table.string :phone_number
      table.integer :number_of_taxis

      table.timestamps
    end
  end
end
