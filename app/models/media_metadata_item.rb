# == Schema Information
# Schema version: 20090310200551
#
# Table name: media_metadata_items
#
#  id            :integer(4)      not null, primary key
#  media_item_id :integer(4)
#  format        :string(255)
#  height        :string(255)
#  width         :string(255)
#  url           :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class MediaMetadataItem < ActiveRecord::Base
end
