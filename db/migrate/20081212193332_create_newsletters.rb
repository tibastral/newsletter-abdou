class CreateNewsletters < ActiveRecord::Migration
  def self.up
    create_table :newsletters do |t|
      t.string :name
      t.string :artist_name
      t.text :artist_caption
      t.string :party_name
      t.string :party_cost
      t.text :party_adress
      t.text :party_description

      t.timestamps
    end
  end

  def self.down
    drop_table :newsletters
  end
end
