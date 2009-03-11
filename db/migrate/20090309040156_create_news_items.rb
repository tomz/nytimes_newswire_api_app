class CreateNewsItems < ActiveRecord::Migration
  def self.up
    create_table :news_items do |t|
      t.string :section
      t.string :subsection
      t.string :headline
      t.string :summary
      t.string :url
      t.string :byline
      t.string :platform
      t.string :source
      t.datetime :updated
      t.datetime :created
      t.date :pubdate
      t.string :subtype
      t.string :kicker
      t.string :subheadline
      t.string :terms
      t.string :organizations
      t.string :people
      t.string :locations
      t.string :indexing_terms
      t.string :related_urls
      t.string :categories_tags

      t.timestamps
    end
  end

  def self.down
    drop_table :news_items
  end
end
