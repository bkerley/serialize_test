class CreateHats < ActiveRecord::Migration
  def self.up
    create_table :hats do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :hats
  end
end
