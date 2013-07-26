class Location < ActiveRecord::Base
  has_many :itemStorages
  has_many :items, :through => :itemStorages

  attr_accessible :description, :name, :room, :type

  validates :name, :presence => true
  validates :type, :presence => true
  validates :room, :presence => true

  self.inheritance_column = :inheritance_loc_column
end
