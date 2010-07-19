class CreateFineArtists < ActiveRecord::Migration
  def self.up
    create_table :fine_artists do |t|
      t.string :category
      t.string :home_Gallery
      t.string :name
      t.string :telephone

      t.timestamps
    end
  end

  def self.down
    drop_table :fine_artists
  end
end
