class CreateFestivals < ActiveRecord::Migration
  def self.up
    create_table :festivals do |t|
      t.date :start
      t.date :end
      t.string :name
      t.string :location
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :festivals
  end
end
