# == Schema Information
# Schema version: 20090310200551
#
# Table name: news_items
#
#  id              :string(255)     not null, primary key
#  section         :string(255)
#  subsection      :string(255)
#  headline        :string(255)
#  summary         :string(255)
#  url             :string(255)
#  byline          :string(255)
#  platform        :string(255)
#  source          :string(255)
#  updated         :datetime
#  created         :datetime
#  pubdate         :date
#  subtype         :string(255)
#  kicker          :string(255)
#  subheadline     :string(255)
#  terms           :string(255)
#  organizations   :string(255)
#  people          :string(255)
#  locations       :string(255)
#  indexing_terms  :string(255)
#  categories_tags :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class NewsItem < ActiveRecord::Base
  has_many :media_items, :dependent => :destroy
  has_many :related_urls, :dependent => :destroy
end
