class AddLoginUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :login, :string, null: false, default: ""
    add_index :users, :login, unique: true
  end
end
