class CreateLeasingTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :leasing_types do |t|
      t.string :leasing_type

      t.timestamps
    end
  end
end
