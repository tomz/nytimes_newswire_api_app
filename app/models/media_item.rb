# == Schema Information
# Schema version: 20090310200551
#
# Table name: media_items
#
#  id           :integer(4)      not null, primary key
#  news_item_id :string(255)
#  type         :string(255)
#  subtype      :string(255)
#  caption      :string(255)
#  copyright    :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class MediaItem < ActiveRecord::Base
  has_many :media_metadata_items, :dependent => :destroy

  # the nytimes api media_item uses the reserved STI 'type' as attr,
  # so rename the STI column to type_sti, it's not used
  self.inheritance_column = :type_sti
end
