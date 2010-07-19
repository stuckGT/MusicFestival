class CreateSponsors < ActiveRecord::Migration
  def self.up
    create_table :sponsors do |t|
      t.string :organization
      t.string :contact
      t.string :telephone

      t.timestamps
    end
  end

  def self.down
    drop_table :sponsors
  end
end
