class Food < ActiveRecord::Base
  attr_accessible :calories, :carbs, :fat, :name, :protien, :id

  has_many :menus

  accepts_nested_attributes_for :menus

  has_many :days, through: :menus

  def name_for_select
  	name.capitalize
  end
end
