class CreatePerformsAts < ActiveRecord::Migration
  def self.up
    create_table :performs_ats do |t|
      t.string :musician_Name
      t.integer :mestival_ID

      t.timestamps
    end
  end

  def self.down
    drop_table :performs_ats
  end
end
