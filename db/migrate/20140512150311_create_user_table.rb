class CreateUserTable < ActiveRecord::Migration
  def change
    create_table :user_tables do |t|
      t.string :email
      t.string :name
    end
  end
end
