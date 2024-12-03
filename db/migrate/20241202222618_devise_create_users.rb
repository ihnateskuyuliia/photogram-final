# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      # t.string :email, null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      # Add other Devise fields here as needed

      t.timestamps null: false
    end

   # add_index :users, :email, unique: true
  end
end
