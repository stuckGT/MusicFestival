class CreateDisplaysAts < ActiveRecord::Migration
  def self.up
    create_table :displays_ats do |t|
      t.string :artist
      t.string :artist_Telephone
      t.integer :festival_ID

      t.timestamps
    end
  end

  def self.down
    drop_table :displays_ats
  end
end
