class CreateSellsAts < ActiveRecord::Migration
  def self.up
    create_table :sells_ats do |t|
      t.integer :license
      t.integer :festival_ID

      t.timestamps
    end
  end

  def self.down
    drop_table :sells_ats
  end
end
