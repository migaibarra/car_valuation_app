class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.belongs_to :user

      t.string :make, null: false
      t.string :car_model, null: false
      t.integer :milage, null: false
      t.string :condition, null: false

      t.timestamps null: false
    end
  end
end
