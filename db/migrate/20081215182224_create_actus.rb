class CreateActus < ActiveRecord::Migration
  def self.up
    create_table :actus do |t|
      t.string :title
      t.text :description
      t.references :newsletter

      t.timestamps
    end
  end

  def self.down
    drop_table :actus
  end
end
