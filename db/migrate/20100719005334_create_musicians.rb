class CreateMusicians < ActiveRecord::Migration
  def self.up
    create_table :musicians do |t|
      t.string :genre
      t.decimal :performance_Fee
      t.string :name
      t.string :telephone

      t.timestamps
    end
  end

  def self.down
    drop_table :musicians
  end
end
