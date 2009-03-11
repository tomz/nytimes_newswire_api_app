class CreateMediaMetadataItems < ActiveRecord::Migration
  def self.up
    create_table :media_metadata_items do |t|
      t.integer :media_item_id
      t.string :format
      t.string :height
      t.string :width
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :media_metadata_items
  end
end
