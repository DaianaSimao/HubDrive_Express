class CreateCardTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :card_types do |t|
      t.string :card_type_name

      t.timestamps
    end
  end
end
