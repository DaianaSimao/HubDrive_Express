class CreatePaymentCards < ActiveRecord::Migration[7.0]
  def change
    create_table :payment_cards do |t|
      t.string :card_network
      t.references :card_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
