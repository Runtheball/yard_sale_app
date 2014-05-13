class AddColumnToUsers < ActiveRecord::Migration
  def change
    drop_table :user_tables
    drop_table :users
  end
end
