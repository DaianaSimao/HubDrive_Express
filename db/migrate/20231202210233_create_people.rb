class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :last_name
      t.string :telephone
      t.date :birth_date
      

      t.timestamps
    end
  end
end
