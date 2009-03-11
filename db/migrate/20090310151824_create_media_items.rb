class CreateMediaItems < ActiveRecord::Migration
  def self.up
    create_table :media_items do |t|
      t.string :news_item_id
      t.string :type
      t.string :subtype
      t.string :caption
      t.string :copyright

      t.timestamps
    end
  end

  def self.down
    drop_table :media_items
  end
end
