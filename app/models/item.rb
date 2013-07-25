class Item < ActiveRecord::Base
  attr_accessible :name, :type

  validates :name, :presence => true
  validates :type, :presence => true

  self.inheritance_column = :inheritance_type
end
