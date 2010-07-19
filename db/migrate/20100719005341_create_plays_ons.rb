class CreatePlaysOns < ActiveRecord::Migration
  def self.up
    create_table :plays_ons do |t|
      t.string :musician_Name
      t.time :time
      t.integer :festival_ID
      t.integer :stage_ID

      t.timestamps
    end
  end

  def self.down
    drop_table :plays_ons
  end
end
