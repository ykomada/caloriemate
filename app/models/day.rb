class Day < ActiveRecord::Base
   attr_accessible :id
  has_many :menus

  accepts_nested_attributes_for :menus
  
  has_many :foods, through: :menus
end
