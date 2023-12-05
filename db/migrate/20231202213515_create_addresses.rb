class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :address_name
      t.string :number
      t.string :cep
      t.string :neighborhood
      t.string :municipality
      t.string :city
      t.references :people, null: false, foreign_key: true
      t.references :address_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
