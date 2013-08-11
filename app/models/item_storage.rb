class ItemStorage < ActiveRecord::Base
  belongs_to :item
  belongs_to :location

  validates :item, :presence => true
  validates :location, :presence => true
  validates :time, :presence => true

  attr_accessible :time
end
