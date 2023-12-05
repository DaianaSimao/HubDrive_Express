class CreateBrandTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :brand_types do |t|
      t.string :brand_name

      t.timestamps
    end
  end
end
