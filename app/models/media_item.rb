class MediaItem < ActiveRecord::Base
  has_many :media_metadata_items, :dependent => :destroy

  # the nytimes api media_item uses the reserved STI 'type' as attr,
  # so rename the STI column to type_sti, it's not used
  self.inheritance_column = :type_sti
end
