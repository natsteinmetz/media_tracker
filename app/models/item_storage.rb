class ItemStorage < ActiveRecord::Base
  belongs_to :item
  belongs_to :location

  attr_accessible :time
end
