class Item < ActiveRecord::Base
  attr_accessible :name, :type

  self.inheritance_column = :inheritance_type
end
