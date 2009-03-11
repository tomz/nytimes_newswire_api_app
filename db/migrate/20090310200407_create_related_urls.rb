class CreateRelatedUrls < ActiveRecord::Migration
  def self.up
    create_table :related_urls do |t|
      t.string :news_item_id
      t.string :suggested_link_text
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :related_urls
  end
end
