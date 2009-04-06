# == Schema Information
# Schema version: 20090310200551
#
# Table name: related_urls
#
#  id                  :integer(4)      not null, primary key
#  news_item_id        :string(255)
#  suggested_link_text :string(255)
#  url                 :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#

class RelatedUrl < ActiveRecord::Base
end
