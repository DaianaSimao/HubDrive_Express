class CreateLeasingCars < ActiveRecord::Migration[7.0]
  def change
    create_table :leasing_cars do |t|
      t.references :leasing_type, null: false, foreign_key: true
      t.date :date_leasing
      t.date :return_date
      t.string :leasing_value
      t.references :payment_method, null: false, foreign_key: true
      t.references :payment_cards, null: false, foreign_key: true
      t.integer :number
      t.string :cvv
      t.date :due_date
      t.string :cardholder_name
      t.string :personal_iden_number
      t.references :car_model, null: false, foreign_key: true
      t.references :people, null: false, foreign_key: true

      t.timestamps
    end
  end
end
