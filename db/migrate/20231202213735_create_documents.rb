class CreateDocuments < ActiveRecord::Migration[7.0]
  def change
    create_table :documents do |t|
      t.references :people, null: false, foreign_key: true
      t.references :document_type, null: false, foreign_key: true
      t.string :number_document
      t.date :expiration_date
      t.date :emission_date

      t.timestamps
    end
  end
end
