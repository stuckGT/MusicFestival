class CreateVendors < ActiveRecord::Migration
  def self.up
    create_table :vendors do |t|
      t.string :name
      t.string :telephone
      t.string :license
      t.string :credit_Type
      t.string :credit_Number
      t.integer :category_ID

      t.timestamps
    end
  end

  def self.down
    drop_table :vendors
  end
end
