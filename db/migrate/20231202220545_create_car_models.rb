class CreateCarModels < ActiveRecord::Migration[7.0]
  def change
    create_table :car_models do |t|
      t.string :model_names
      t.string :color
      t.integer :number_doors
      t.string :plate
      t.string :renavam
      t.string :chassis
      t.string :country_origin
      t.references :brand_type, null: false, foreign_key: true
      t.references :platform, null: false, foreign_key: true

      t.timestamps
    end
  end
end
