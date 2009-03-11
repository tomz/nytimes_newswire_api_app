class DropRelatedUrlsColumnInNewsItems < ActiveRecord::Migration
  def self.up
    remove_column :news_items, :related_urls
  end

  def self.down
    add_column :news_items, :related_urls, :string
  end
end
