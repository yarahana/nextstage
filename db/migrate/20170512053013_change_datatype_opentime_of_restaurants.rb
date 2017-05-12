class ChangeDatatypeOpentimeOfRestaurants < ActiveRecord::Migration
def self.up
  change_column :restaurants, :open_time, :text
end

def self.down
  change_column :restaurants, :open_time, :string
end
end
