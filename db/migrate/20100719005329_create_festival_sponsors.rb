class CreateFestivalSponsors < ActiveRecord::Migration
  def self.up
    create_table :festival_sponsors do |t|
      t.string :organization
      t.integer :festival_ID
      t.decimal :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :festival_sponsors
  end
end
