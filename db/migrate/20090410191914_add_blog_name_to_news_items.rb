class AddBlogNameToNewsItems < ActiveRecord::Migration
  def self.up
    add_column :news_items, :blog_name, :string
  end
 
  def self.down
    remove_column :news_items, :blog_name
  end
end
