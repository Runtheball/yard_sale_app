class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :password_salt
      t.string :password_hash
      t.datetime :created_at
      t.datetime :updated_at
      t.string :password_digest
    end
  end
end
