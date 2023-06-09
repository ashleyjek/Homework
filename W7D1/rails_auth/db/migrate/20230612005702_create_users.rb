class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :password_digest, null: false

      t.timestamps
    end

    add_column :users, :session_token, :string, null: false
    add_index :users, :session_token, unique: true
    
  end
end
