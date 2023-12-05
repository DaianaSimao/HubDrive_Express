class CreateAddressTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :address_types do |t|
      t.string :address_type

      t.timestamps
    end
  end
end
