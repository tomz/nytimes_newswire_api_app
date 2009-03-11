class ChangeNewsItemIdToString < ActiveRecord::Migration
  def self.up
    change_column :news_items, :id, :string 
  end

  def self.down
    change_column :news_items, :id, :integer
  end
end
