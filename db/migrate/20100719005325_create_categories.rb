class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.integer :Category_ID
      t.decimal :fee

      t.timestamps
    end
  end

  def self.down
    drop_table :categories
  end
end
