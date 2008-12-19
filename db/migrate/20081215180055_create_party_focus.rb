class CreatePartyFocus < ActiveRecord::Migration
  def self.up
    add_column :newsletters, :party_id, :integer
  end

  def self.down
    remove_column :newsletters, :party_id
  end
end
