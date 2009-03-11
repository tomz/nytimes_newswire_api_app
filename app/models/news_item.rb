class NewsItem < ActiveRecord::Base
  has_many :media_items, :dependent => :destroy
  has_many :related_urls, :dependent => :destroy
end
