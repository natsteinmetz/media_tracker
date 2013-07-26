class Item < ActiveRecord::Base
  has_many :itemStorages
  has_many :locations, :through => :itemStorages


  attr_accessible :name, :type

  validates :name, :presence => true
  validates :type, :presence => true

  self.inheritance_column = :inheritance_type
end
