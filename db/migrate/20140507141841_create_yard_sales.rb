class CreateYardSales < ActiveRecord::Migration
  def change
    create_table :yard_sales do |t|
      t.string :name
      t.date :sale_date
    end

    create_table :items do |t|
    	t.string :name
    	t.integer :price
    	t.integer :yard_sale_id
    end

    create_table :notes do |t|
    	t.text :content
    	t.integer :notable_id
    	t.string :notable_type

    	t.timestamps
    end
  end
end
