class AddLoginUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :login, :string, null: false, default: ""
    add_index :users, :login, unique: true
    add_column :users, :name, :string
    add_column :users, :last_name, :string
  end
end
